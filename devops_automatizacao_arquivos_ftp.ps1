
# Script PowerShell para Manipulação de Arquivos via FTP

# Função para busca de arquivos no FTP com configuração diária
function busca_arquivos_ftp_diario($buscaArquivosVar, $days, $extensao) {
    $tempFolder = "C:\[CONFIGURAVEL]\tempfolder"
    $declaracao = "C:\[CONFIGURAVEL]\declaracao.txt"

    # Limpando pasta temporária
    Get-ChildItem $tempFolder | Remove-Item -Force -Confirm:$false -ErrorAction SilentlyContinue

    $date = (Get-Date).AddDays($days).ToString("yyyyMMdd")
    $log = "C:\[CONFIGURAVEL]\Logs\Log_" + (Get-Date -Format "yyyyMMdd") + ".txt"
    $output = "Fazendo download: *" + $buscaArquivosVar + "*" + $date + "*" + $extensao | Out-File $log -Append

    $string = "get /Enviados/*" + $buscaArquivosVar + "*" + $date + "*" + $extensao + " $tempFolder\"

    # Configuração de compatibilidade para versões do PowerShell
    $PSNativeCommandArgumentPassing = "Legacy"

    $RESULT = & "C:\Program Files (x86)\WinSCP\WinSCP.com" `
      /command `
        "open ftpes://$env:FTP_USER@$env:FTP_SERVER:$env:FTP_PORT/" `
        "$string" `
        "exit"

    # Verificando resultado
    if ($LastExitCode -eq 0) {
        if ($RESULT -like "*no file matching*") {
            "Conexão FTP OK, mas nenhum arquivo foi encontrado." | Out-File $log -Append
        } else {
            "Conexão FTP OK, arquivo copiado." | Out-File $log -Append
        }
    } else {
        "Erro na conexão FTP." | Out-File $log -Append
    }
}

# Função para limpeza de arquivos antigos
function limpeza($limpezaVar) {
    $dateFolder = (Get-Date).AddDays(-11).ToString("yyyyMMdd")
    $filtro = "$limpezaVar\*$dateFolder*"
    $destino = "C:\[CONFIGURAVEL]\Backup"

    # Copiando e limpando arquivos antigos
    Get-ChildItem $filtro | Copy-Item $destino -Force -ErrorAction SilentlyContinue
    if (!$?) {
        Write-Host "Erro ao realizar a cópia."
    } else {
        Get-ChildItem $filtro | Remove-Item -Force -ErrorAction SilentlyContinue
    }
}

# Inicializando
$error.Clear()
$log = "C:\[CONFIGURAVEL]\Logs\Log_" + (Get-Date -Format "yyyyMMdd") + ".txt"
"========== Início do script ==========" | Out-File $log
"Executando passo 1: " + (Get-Date -Format "HH:mm:ss") | Out-File $log -Append

busca_arquivos_ftp_diario "MENSAL" -1 ".txt"
