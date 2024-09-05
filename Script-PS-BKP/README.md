<h1>Backup Script - PowerShell</h1>

<p>Este é um script PowerShell simples para automatizar o processo de backup de uma pasta de origem para um local de destino. O script cria um backup com carimbo de data/hora e registra as atividades em um arquivo de log.</p>

<h2>Funcionalidades</h2>

<ul>
  <li>Verifica se a pasta de origem existe.</li>
  <li>Cria um diretório de backup com um carimbo de data/hora.</li>
  <li>Copia os arquivos da pasta de origem para a pasta de backup.</li>
  <li>Registra as atividades do backup (sucesso ou falha) em um arquivo de log.</li>
  <li>Exibe mensagens coloridas no terminal informando o status do backup.</li>
</ul>

<h2>Parâmetros</h2>

<ul>
  <li><code>$sourceFolder</code>: O caminho da pasta de origem que será copiada.</li>
  <li><code>$destinationFolder</code>: O local onde o backup será armazenado.</li>
  <li><code>$timestamp</code>: Um carimbo de data/hora no formato <code>yyyy-MM-dd_HH-mm</code> usado para nomear a pasta de backup.</li>
</ul>

<h2>Como usar</h2>

<p>1. <strong>Defina os parâmetros</strong>:</p>

<ul>
  <li>Modifique os caminhos das variáveis <code>$sourceFolder</code> e <code>$destinationFolder</code> conforme necessário.</li>
  <li><code>$sourceFolder</code>: Pasta que você deseja fazer o backup.</li>
  <li><code>$destinationFolder</code>: Local onde os backups serão armazenados.</li>
</ul>

<p>2. <strong>Rodando o script</strong>:</p>

<ul>
  <li>Execute o script no PowerShell.</li>
  <li>Certifique-se de ter permissões suficientes para acessar e copiar as pastas.</li>
</ul>

<pre><code>$sourceFolder = "C:\Caminho\Para\PastaOrigem"       # Pasta que você deseja fazer o backup
$destinationFolder = "D:\Backups"                  # Onde você deseja armazenar os backups
$timestamp = Get-Date -Format "yyyy-MM-dd_HH-mm"   # Carimbo de data/hora para nome das pastas
</code></pre>

<p>3. <strong>Logs</strong>:</p>

<ul>
  <li>Todas as atividades de backup (sucesso ou falha) serão registradas no arquivo <code>BackupLog.txt</code> localizado na pasta de destino.</li>
</ul>

<h2>Exemplo de Saída</h2>

<ul>
  <li>Backup concluído com sucesso:
  <pre><code>Backup realizado com sucesso: C:\Caminho\Para\PastaOrigem para D:\Backups\Backup_2023-09-04_10-30</code></pre></li>
  
  <li>Falha na origem:
  <pre><code>A pasta de origem não existe!</code></pre></li>
  
  <li>Falha no processo de backup:
  <pre><code>Ocorreu um erro durante o processo de backup.</code></pre></li>
</ul>

<h2>Requisitos</h2>

<ul>
  <li>PowerShell 5.0 ou superior</li>
  <li>Permissões de leitura na pasta de origem e gravação na pasta de destino.</li>
</ul>

<h2>Contribuição</h2>

<p>Sinta-se à vontade para contribuir com melhorias ou ajustes!</p>

