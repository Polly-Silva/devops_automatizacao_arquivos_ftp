## 🚀 Script PowerShell para gerenciar arquivos via FTP


Este repositório contém um script em PowerShell que facilita o trabalho de quem precisa gerenciar arquivos via FTP de forma automática. Se você está cansado de fazer downloads manuais, este script será seu melhor amigo!

## 💡 O que o script faz?
Busca de Arquivos no FTP :
Quer baixar arquivos automaticamente? O script permite configurar filtros por dados e extensão para pegar os arquivos de maneira simples.

Limpeza e Organização :
Arquivos antigos? Não se preocupe! Ele move tudo para um diretório de backup, mantendo sua pasta limpa e organizada.

Logs de Tudo :
Nada passa batido! O script gera registros detalhados de todas as atividades, então você vai saber tudo o que aconteceu durante a execução.

## 🛠️ Como configurar?
Antes de começar, basta configurar alguns detalhes no código para adaptar à sua necessidade:

Caminhos de Diretórios :

Diretório temporário onde os arquivos serão baixados ( tempfolder)
Diretório de backup onde os arquivos antigos vão parar ( Backup)
Local para os logs que registram tudo o que acontece ( Logs)
Instalar o WinSCP :
O script depende do WinSCP para realizar a conexão FTP, então tenha ele instalado e configurado. Se não tiver, baixe aqui .

## ⚡ Como rodar o script?
Com tudo configurado, é só rodar no PowerShell! Abra o PowerShell com permissão de administrador e execute o seguinte comando:

powershell

Copiar código
.\script.ps1  

## 🌟 Requisitos
Windows com PowerShell 5.1 ou superior
Cliente WinSCP instalado
Permissões para leitura e gravação em diretórios configurados
💬 O que você vai encontrar aqui?
Um script PowerShell simples, mas poderoso!
Automação de tarefas FTP que vai economizar seu tempo.
Um processo de backup que vai deixar seus arquivos em segurança.

Não perca tempo com tarefas manuais – deixe o script fazer o trabalho pesado para você! 😎
