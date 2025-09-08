# 📋 Detaylı Kurulum Rehberi

Bu rehber, Hyprland Professional Dotfiles'ı sisteminize kurmanız için adım adım talimatlar içerir.

## 🔍 Sistem Gereksinimleri

### Minimum Gereksinimler
- **İşlemci**: x86_64 mimarisi
- **RAM**: En az 4GB (8GB önerilir)
- **Depolama**: En az 10GB boş alan
- **Grafik**: Wayland destekleyen GPU

### Desteklenen Dağıtımlar
- ✅ Arch Linux
- ✅ Manjaro
- ✅ EndeavourOS
- ⚠️ Ubuntu (manuel kurulum gerekli)
- ⚠️ Fedora (manuel kurulum gerekli)

## 📦 Paket Kurulumu

### 1. Temel Paketler

```bash
# AUR helper'ı yükleyin (yay önerilir)
sudo pacman -S --needed base-devel git
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

### 2. Hyprland ve Bağımlılıkları

```bash
# Ana paketler
sudo pacman -S hyprland waybar rofi kitty swaylock grimblast wl-clipboard hyprpaper polkit-gnome brightnessctl pavucontrol thunar

# AUR paketleri
yay -S grimblast-git
```

### 3. Ek Paketler (İsteğe Bağlı)

```bash
# Medya oynatıcılar
sudo pacman -S mpv vlc

# Geliştirme araçları
sudo pacman -S code firefox chromium

# Fontlar
sudo pacman -S ttf-jetbrains-mono ttf-font-awesome papirus-icon-theme

# Ek araçlar
sudo pacman -S neofetch htop btop
```

## 🚀 Kurulum Adımları

### 1. Repository'yi İndirin

```bash
# Git ile klonlayın
git clone https://github.com/kullanici/hyprland-dotfiles.git ~/dotfiles
cd ~/dotfiles

# Veya manuel olarak indirin
wget https://github.com/kullanici/hyprland-dotfiles/archive/main.zip
unzip main.zip
cd hyprland-dotfiles-main
```

### 2. Otomatik Kurulum

```bash
# Kurulum scriptini çalıştırın
./scripts/install.sh
```

### 3. Manuel Kurulum

Eğer otomatik kurulum çalışmazsa:

```bash
# Konfigürasyon dizinlerini oluşturun
mkdir -p ~/.config/{hypr,waybar,rofi,kitty,swaylock,wofi,gtk-3.0,gtk-4.0}

# Konfigürasyon dosyalarını kopyalayın
cp -r .config/* ~/.config/

# Script dosyalarını kopyalayın
mkdir -p ~/.local/bin
cp scripts/* ~/.local/bin/
chmod +x ~/.local/bin/*

# Wallpaper dizini oluşturun
mkdir -p ~/Pictures/Wallpapers
```

## ⚙️ Sistem Ayarları

### 1. Display Manager Ayarları

#### SDDM için:
```bash
# SDDM'i yükleyin
sudo pacman -S sddm

# Hyprland'i varsayılan session yapın
echo "[Desktop Entry]
Name=Hyprland
Comment=Hyprland Wayland Compositor
Exec=Hyprland
Type=Application" | sudo tee /usr/share/xsessions/hyprland.desktop

# SDDM'i etkinleştirin
sudo systemctl enable sddm
```

#### GDM için:
```bash
# GDM'i yükleyin
sudo pacman -S gdm

# GDM'i etkinleştirin
sudo systemctl enable gdm
```

### 2. Polkit Ayarları

```bash
# Polkit agent'ı etkinleştirin
echo "exec /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1" >> ~/.config/hypr/hyprland.conf
```

### 3. Font Ayarları

```bash
# Font cache'i yenileyin
fc-cache -fv

# Font'ları test edin
fc-list | grep -i jetbrains
```

## 🎨 Tema Kurulumu

### 1. Tema Uygulama

```bash
# Catppuccin temasını uygula
./themes/apply_theme.sh catppuccin

# Dracula temasını uygula
./themes/apply_theme.sh dracula

# Nord temasını uygula
./themes/apply_theme.sh nord
```

### 2. Özel Tema Oluşturma

```bash
# Tema dosyası oluşturun
cp themes/catppuccin.conf themes/my_theme.conf

# Tema dosyasını düzenleyin
nano themes/my_theme.conf

# Tema uygulayın
./themes/apply_theme.sh my_theme
```

## 🔧 Sorun Giderme

### Yaygın Sorunlar

#### 1. Hyprland Başlamıyor

```bash
# Logları kontrol edin
journalctl -u Hyprland

# Konfigürasyonu test edin
hyprctl reload
```

#### 2. Waybar Görünmüyor

```bash
# Waybar'ı manuel başlatın
waybar &

# Logları kontrol edin
waybar --log-level debug
```

#### 3. Rofi Çalışmıyor

```bash
# Rofi'yi test edin
rofi -show drun

# Konfigürasyonu kontrol edin
rofi -dump-config
```

#### 4. Screenshot Çalışmıyor

```bash
# Grimblast'i test edin
grimblast copy area

# Gerekli paketleri yükleyin
sudo pacman -S grimblast
```

### Log Dosyaları

```bash
# Hyprland logları
journalctl -u Hyprland -f

# Waybar logları
waybar --log-level debug

# Sistem logları
journalctl -f
```

## 🚀 İlk Başlatma

### 1. Hyprland'i Başlatın

```bash
# Display manager ile
# Sistemi yeniden başlatın veya logout yapın

# Manuel başlatma
Hyprland
```

### 2. Temel Testler

```bash
# Terminal açın (Super + Q)
# Rofi'yi açın (Super + R)
# Pencere yönetimini test edin
# Screenshot alın (Super + Print)
```

### 3. Performans Ayarları

```bash
# GPU ayarları
nvidia-settings  # NVIDIA için
# veya
intel_gpu_top    # Intel için

# Bellek kullanımı
htop
```

## 📱 Mobil Cihazlar

### Tablet Desteği

```bash
# Tablet paketleri
sudo pacman -S xf86-input-wacom

# Konfigürasyon
cat > ~/.config/hypr/tablet.conf << EOF
# Tablet ayarları
input {
    tablet {
        output = DP-1
        region_position = 0,0
        region_size = 1920,1080
    }
}
EOF
```

## 🔒 Güvenlik

### 1. Ekran Kilidi

```bash
# Swaylock'u test edin
swaylock

# Otomatik kilit ayarları
swayidle -w timeout 300 'swaylock' timeout 600 'hyprctl dispatch dpms off' resume 'hyprctl dispatch dpms on'
```

### 2. Firewall

```bash
# UFW'yi yükleyin
sudo pacman -S ufw

# Firewall'u etkinleştirin
sudo ufw enable
```

## 📊 Performans Optimizasyonu

### 1. GPU Ayarları

```bash
# NVIDIA için
nvidia-settings

# Intel için
sudo pacman -S intel-gpu-tools
```

### 2. Bellek Optimizasyonu

```bash
# Swap ayarları
sudo swapon --show

# Bellek kullanımı
free -h
```

## 🎯 Sonraki Adımlar

1. **Özelleştirme**: Konfigürasyon dosyalarını ihtiyaçlarınıza göre düzenleyin
2. **Eklentiler**: Ek uygulamalar ve eklentiler yükleyin
3. **Backup**: Konfigürasyonlarınızı yedekleyin
4. **Güncelleme**: Düzenli olarak güncellemeleri kontrol edin

## 📞 Yardım

- **GitHub Issues**: Sorunlarınızı bildirin
- **Discord**: Topluluk desteği
- **Wiki**: Detaylı dokümantasyon

---

**Not**: Bu rehber sürekli güncellenmektedir. En güncel bilgiler için GitHub repository'sini kontrol edin.
