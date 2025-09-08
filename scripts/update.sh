#!/bin/bash
# ===========================================
# HYPRLAND DOTFILES UPDATE SCRIPT
# ===========================================

set -e

echo "🔄 Hyprland Dotfiles Güncelleniyor..."

# Renk kodları
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

print_status() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

print_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

# Backup oluştur
create_backup() {
    print_status "Mevcut konfigürasyon yedekleniyor..."
    
    local backup_dir="$HOME/.config_backup_$(date +%Y%m%d_%H%M%S)"
    mkdir -p "$backup_dir"
    
    if [ -d "$HOME/.config/hypr" ]; then
        cp -r "$HOME/.config/hypr" "$backup_dir/"
    fi
    if [ -d "$HOME/.config/waybar" ]; then
        cp -r "$HOME/.config/waybar" "$backup_dir/"
    fi
    if [ -d "$HOME/.config/rofi" ]; then
        cp -r "$HOME/.config/rofi" "$backup_dir/"
    fi
    if [ -d "$HOME/.config/kitty" ]; then
        cp -r "$HOME/.config/kitty" "$backup_dir/"
    fi
    
    print_success "Yedek oluşturuldu: $backup_dir"
}

# Konfigürasyonları güncelle
update_configs() {
    print_status "Konfigürasyonlar güncelleniyor..."
    
    # Yeni konfigürasyonları kopyala
    cp -r .config/* ~/.config/
    
    # Script dosyalarını güncelle
    cp scripts/* ~/.local/bin/
    chmod +x ~/.local/bin/*
    
    print_success "Konfigürasyonlar güncellendi!"
}

# Hyprland'i yeniden yükle
reload_hyprland() {
    print_status "Hyprland yeniden yükleniyor..."
    
    if pgrep -x "Hyprland" > /dev/null; then
        hyprctl reload
        print_success "Hyprland yeniden yüklendi!"
    else
        print_warning "Hyprland çalışmıyor, manuel olarak başlatın."
    fi
}

# Ana güncelleme fonksiyonu
main() {
    echo "==========================================="
    echo "    HYPRLAND DOTFILES UPDATE"
    echo "==========================================="
    echo
    
    create_backup
    update_configs
    reload_hyprland
    
    echo
    echo "==========================================="
    print_success "Güncelleme tamamlandı!"
    echo "==========================================="
}

main "$@"
