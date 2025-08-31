# VortexPlay Repository

Repositório oficial do addon VortexPlay para Kodi - Streaming de canais, filmes e séries com interface futurista.

## 📋 Configuração no GitHub

### Passo 1: Criar o Repositório
1. Acesse [GitHub](https://github.com) e faça login
2. Clique em "New repository" (Novo repositório)
3. Nome do repositório: `vortexplay-repo`
4. Marque como **Público** (importante para o Kodi acessar)
5. Clique em "Create repository"

### Passo 2: Fazer Upload dos Arquivos
1. Na página do repositório criado, clique em "uploading an existing file"
2. Arraste e solte todos os arquivos desta pasta:
   - `addons.xml`
   - `addons.xml.md5`
   - `plugin.video.VortexPlay-1.3.1.zip`
   - `repository.vortexplay-1.0.0.zip`
   - Pasta `plugin.video.VortexPlay/` (completa)
   - Pasta `repository.vortexplay/` (completa)

### Passo 3: Atualizar URLs
1. Após fazer upload, edite o arquivo `addons.xml`
2. Substitua `SEU_USUARIO` pelo seu nome de usuário do GitHub
3. Substitua `vortexplay-repo` pelo nome do seu repositório (se diferente)

### Passo 4: Atualizar Hash MD5
1. Após editar o `addons.xml`, gere novo hash MD5
2. No terminal/cmd: `md5sum addons.xml > addons.xml.md5`
3. Faça upload do novo arquivo `addons.xml.md5`

## 🚀 Instalação no Kodi

### Método 1: Via ZIP do Repositório
1. Baixe o arquivo `repository.vortexplay-1.0.0.zip`
2. No Kodi: Configurações → Add-ons → Instalar de arquivo ZIP
3. Selecione o arquivo baixado
4. O repositório será instalado e o addon ficará disponível

### Método 2: Via URL Direta
1. No Kodi: Configurações → Add-ons → Instalar de repositório
2. Adicione a fonte: `https://github.com/SEU_USUARIO/vortexplay-repo/raw/main/`
3. Instale o repositório VortexPlay
4. Instale o addon VortexPlay do repositório

## 🔄 Atualizações

Para atualizar o addon:

1. Modifique os arquivos do addon
2. Atualize a versão no `addon.xml` e `version.txt`
3. Crie novo ZIP: `plugin.video.VortexPlay-NOVA_VERSAO.zip`
4. Atualize o `addons.xml` com a nova versão
5. Gere novo hash MD5: `md5sum addons.xml > addons.xml.md5`
6. Faça upload dos arquivos atualizados no GitHub

O Kodi verificará automaticamente por atualizações!

## 📁 Estrutura do Repositório

```
vortexplay-repo/
├── addons.xml                           # Lista de addons disponíveis
├── addons.xml.md5                       # Hash MD5 do addons.xml
├── plugin.video.VortexPlay-1.3.1.zip   # Addon empacotado
├── repository.vortexplay-1.0.0.zip      # Repositório empacotado
├── plugin.video.VortexPlay/             # Código fonte do addon
└── repository.vortexplay/               # Código fonte do repositório
```

## ⚠️ Importante

- O repositório deve ser **público** para o Kodi acessar
- Sempre gere novo hash MD5 após modificar `addons.xml`
- Mantenha a estrutura de pastas conforme mostrado
- Use versionamento semântico (ex: 1.3.1, 1.3.2, etc.)

## 🆘 Suporte

Para suporte e dúvidas sobre o addon VortexPlay, entre em contato com BRAZ FERREIRA - PluginStreaming.

