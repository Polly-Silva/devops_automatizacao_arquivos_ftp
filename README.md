## 🚀 Script PowerShell para gerenciar arquivos via FTP


Este repositório contém um script PowerShell que facilita o gerenciamento de arquivos via FTP de maneira automática. Se você está cansado de fazer downloads manuais, esse script será seu melhor amigo!

## 💡 O que o script faz?
Busca de arquivos no FTP :
Precisa baixar arquivos automaticamente? O script permite configurar filtros por dados e extensão para pegar os arquivos com facilidade.

Limpeza e Organização :
Arquivos antigos acumulando? Não se preocupe! Ele move tudo para um diretório de backup, mantendo sua pasta organizada e sem bagunça.

Logs Detalhados :
Nada passa despercebido! O script gera registros detalhados de todas as atividades, então você sempre saberá o que aconteceu durante a execução.

## 🛠️ Como configurar?
Antes de começar, você só precisa ajustar alguns detalhes no código para adequá-lo às suas necessidades:

Caminhos de Diretórios :

Diretório temporário : Onde os arquivos serão baixados ( tempfolder).

Diretório de backup : Para armazenar os arquivos antigos ( Backup).

Diretório de logs : Onde os registros das atividades serão salvas ( Logs).

Instalar o WinSCP :
O script depende do WinSCP para realizar a conexão FTP. Certifique-se de tê-lo instalado e configurado.

## ⚡ Como rodar o script?
Com tudo configurado, basta rodar no PowerShell! 
Abra o PowerShell com permissão de administrador e execute o seguinte comando:

.\script.ps1  

## 🌟 Requisitos

Windows com PowerShell 5.1 ou superior

WinSCP instalado

Permissões para leitura e gravação em diretórios configurados

## 💬 O que você vai encontrar aqui?

Um script PowerShell simples, mas poderoso!

Automação de tarefas FTP , que vai economizar seu tempo.

Faça backup dos arquivos , mantendo tudo seguro e organizado.

Não perca tempo com tarefas manuais – deixe o script fazer o trabalho pesado para você! 😎

OBS: Adicione o seu script.ps1 no Agendador de Tarefas do Windows para que ele seja executado no horário e frequência que você preferir!
