#!/bin/bash
# ===========================================
# SCREENSHOT SCRIPT FOR HYPRLAND
# ===========================================

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

# Screenshot dizini oluştur
SCREENSHOT_DIR="$HOME/Pictures/Screenshots"
mkdir -p "$SCREENSHOT_DIR"

# Tarih ve saat
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Screenshot fonksiyonları
screenshot_area() {
    print_status "Alan seçimi yapılıyor..."
    grimblast copy area "$SCREENSHOT_DIR/screenshot_${TIMESTAMP}.png"
    print_success "Screenshot alındı: $SCREENSHOT_DIR/screenshot_${TIMESTAMP}.png"
}

screenshot_screen() {
    print_status "Ekran görüntüsü alınıyor..."
    grimblast copy screen "$SCREENSHOT_DIR/screenshot_${TIMESTAMP}.png"
    print_success "Screenshot alındı: $SCREENSHOT_DIR/screenshot_${TIMESTAMP}.png"
}

screenshot_window() {
    print_status "Pencere görüntüsü alınıyor..."
    grimblast copy active "$SCREENSHOT_DIR/screenshot_${TIMESTAMP}.png"
    print_success "Screenshot alındı: $SCREENSHOT_DIR/screenshot_${TIMESTAMP}.png"
}

# Ana fonksiyon
main() {
    case "${1:-area}" in
        "area")
            screenshot_area
            ;;
        "screen")
            screenshot_screen
            ;;
        "window")
            screenshot_window
            ;;
        *)
            echo "Kullanım: $0 [area|screen|window]"
            echo "  area   - Alan seçimi (varsayılan)"
            echo "  screen - Tüm ekran"
            echo "  window - Aktif pencere"
            exit 1
            ;;
    esac
}

main "$@"
