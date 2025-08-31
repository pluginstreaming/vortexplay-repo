#!/bin/bash

# Script para atualizar o addon VortexPlay no repositório
# Uso: ./update_addon.sh [nova_versao]

if [ -z "$1" ]; then
    echo "Uso: $0 <nova_versao>"
    echo "Exemplo: $0 1.3.2"
    exit 1
fi

NOVA_VERSAO=$1
ADDON_DIR="plugin.video.VortexPlay"
ADDON_XML="$ADDON_DIR/addon.xml"
VERSION_TXT="$ADDON_DIR/version.txt"

echo "🔄 Atualizando addon para versão $NOVA_VERSAO..."

# Verificar se os arquivos existem
if [ ! -f "$ADDON_XML" ]; then
    echo "❌ Erro: $ADDON_XML não encontrado!"
    exit 1
fi

if [ ! -f "$VERSION_TXT" ]; then
    echo "❌ Erro: $VERSION_TXT não encontrado!"
    exit 1
fi

# Backup dos arquivos originais
echo "📋 Fazendo backup dos arquivos originais..."
cp "$ADDON_XML" "$ADDON_XML.backup"
cp "$VERSION_TXT" "$VERSION_TXT.backup"
cp "addons.xml" "addons.xml.backup"

# Atualizar version.txt
echo "📝 Atualizando $VERSION_TXT..."
echo "$NOVA_VERSAO" > "$VERSION_TXT"

# Atualizar addon.xml
echo "📝 Atualizando $ADDON_XML..."
sed -i "s/version=\"[^\"]*\"/version=\"$NOVA_VERSAO\"/" "$ADDON_XML"

# Atualizar addons.xml
echo "📝 Atualizando addons.xml..."
sed -i "s/version=\"[^\"]*\"/version=\"$NOVA_VERSAO\"/" "addons.xml"

# Criar novo ZIP do addon
echo "📦 Criando novo ZIP do addon..."
rm -f "plugin.video.VortexPlay-*.zip"
zip -r "plugin.video.VortexPlay-$NOVA_VERSAO.zip" "$ADDON_DIR/"

# Gerar novo hash MD5
echo "🔐 Gerando novo hash MD5..."
md5sum addons.xml > addons.xml.md5

echo "✅ Atualização concluída!"
echo ""
echo "📋 Próximos passos:"
echo "1. Verifique as alterações nos arquivos"
echo "2. Faça commit e push para o GitHub:"
echo "   git add ."
echo "   git commit -m \"Atualização para versão $NOVA_VERSAO\""
echo "   git push origin main"
echo ""
echo "📁 Arquivos atualizados:"
echo "   - $ADDON_XML"
echo "   - $VERSION_TXT"
echo "   - addons.xml"
echo "   - addons.xml.md5"
echo "   - plugin.video.VortexPlay-$NOVA_VERSAO.zip"

