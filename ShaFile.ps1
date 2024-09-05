# Parâmetros
$sourceFolder = "C:\Caminho\Para\PastaOrigem"       # Pasta que você deseja fazer o backup
$destinationFolder = "D:\Backups"                  # Onde você deseja armazenar os backups
$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm"   # Carimbo de data/hora para nome das pastas

# Destino do backup com pasta nomeada pelo timestamp
$backupDestination = Join-Path -Path $destinationFolder -ChildPath "Backup_$timestamp"

# Função para registrar os eventos do backup
function Log-Backup {
    param (
        [string]$message
    )
    $logFile = "$destinationFolder\BackupLog.txt"
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logMessage = "$timestamp : $message"
    Add-Content -Path $logFile -Value $logMessage
}

# Iniciar o processo de backup
try {
    # Verificar se a pasta de origem existe
    if (Test-Path $sourceFolder) {
        # Criar a pasta de destino para o backup
        New-Item -Path $backupDestination -ItemType Directory -Force | Out-Null
        
        # Copiar os arquivos para a pasta de backup
        Copy-Item -Path $sourceFolder -Destination $backupDestination -Recurse -Force

        # Registrar o sucesso do backup
        Log-Backup "Backup realizado com sucesso: $sourceFolder para $backupDestination"
        Write-Host "Backup concluído com sucesso!" -ForegroundColor Green
    } else {
        # Registrar falha caso a pasta de origem não seja encontrada
        Log-Backup "Pasta de origem não encontrada: $sourceFolder"
        Write-Host "A pasta de origem não existe!" -ForegroundColor Red
    }
} catch {
    # Capturar qualquer erro e registrar
    Log-Backup "Falha no backup: $_"
    Write-Host "Ocorreu um erro durante o processo de backup." -ForegroundColor Red
}
