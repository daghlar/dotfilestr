# 🚀 Hyprland Professional Dotfiles

Bu repository, Arch Linux için optimize edilmiş profesyonel Hyprland dotfiles konfigürasyonunu içerir. Modern, hızlı ve özelleştirilebilir bir Wayland compositor deneyimi sunar.

## ✨ Özellikler

- **Modern Hyprland Konfigürasyonu**: Optimize edilmiş performans ve güzel animasyonlar
- **Profesyonel Waybar**: Sistem bilgileri, çalışma alanları ve medya kontrolleri
- **Rofi Launcher**: Hızlı uygulama başlatma ve pencere değiştirme
- **Kitty Terminal**: Hızlı ve özelleştirilebilir terminal emülatörü
- **Neovim Konfigürasyonu**: Modern vim editörü ile LSP desteği
- **Zsh + Oh My Zsh**: Güçlü shell deneyimi ve eklentiler
- **Swaylock + Wlogout**: Güvenli ekran kilidi ve logout menüsü
- **Hyprpaper**: Wallpaper yöneticisi
- **GTK Tema Desteği**: Catppuccin tema entegrasyonu
- **Font Optimizasyonu**: JetBrains Mono ve Nerd Fonts
- **Çoklu Tema Desteği**: Catppuccin, Dracula ve Nord temaları
- **Kapsamlı Kurulum**: Tek komutla tam kurulum
- **Screenshot Araçları**: Kolay ekran görüntüsü alma
- **Türkçe Klavye Desteği**: Tam Türkçe klavye konfigürasyonu

## 🛠️ Gereksinimler

- Arch Linux (veya Arch tabanlı dağıtımlar)
- Hyprland
- Waybar
- Rofi
- Kitty
- Swaylock
- Grimblast
- wl-clipboard
- Hyprpaper
- polkit-gnome
- brightnessctl
- pavucontrol
- thunar

## 📦 Kurulum

### Otomatik Kurulum

```bash
# Repository'yi klonlayın
git clone https://github.com/daghlar/dotfilestr.git
cd dotfilestr

# Kapsamlı kurulum scriptini çalıştırın
./scripts/setup.sh

# Veya hızlı kurulum için
./scripts/install.sh
```

### Manuel Kurulum

```bash
# Gerekli paketleri yükleyin
sudo pacman -S hyprland waybar rofi kitty swaylock grimblast wl-clipboard hyprpaper polkit-gnome brightnessctl pavucontrol thunar

# Konfigürasyon dosyalarını kopyalayın
cp -r .config/* ~/.config/
cp scripts/* ~/.local/bin/
chmod +x ~/.local/bin/*

# Hyprland'i başlatın
Hyprland
```

## 🎨 Temalar

### Mevcut Temalar

- **Catppuccin**: Pastel renkler ve modern görünüm
- **Dracula**: Koyu tema ve canlı renkler
- **Nord**: Minimalist ve profesyonel görünüm

### Tema Uygulama

```bash
# Tema uygula
./themes/apply_theme.sh catppuccin
./themes/apply_theme.sh dracula
./themes/apply_theme.sh nord

# Mevcut temaları listele
./themes/apply_theme.sh list
```

## ⌨️ Klavye Kısayolları

### Temel Kısayollar

| Kısayol | Açıklama |
|---------|----------|
| `Super + Q` | Terminal aç |
| `Super + C` | Aktif pencereyi kapat |
| `Super + M` | Hyprland'den çık |
| `Super + E` | Dosya yöneticisi aç |
| `Super + V` | Pencereyi yüzdür |
| `Super + R` | Rofi launcher aç |
| `Super + L` | Ekranı kilitle |

### Pencere Yönetimi

| Kısayol | Açıklama |
|---------|----------|
| `Super + ←/→/↑/↓` | Pencere odağını değiştir |
| `Super + Shift + ←/→/↑/↓` | Pencereyi taşı |
| `Super + Ctrl + ←/→/↑/↓` | Pencere boyutunu değiştir |
| `Super + F` | Tam ekran |
| `Super + Shift + F` | Pencereyi yüzdür |

### Çalışma Alanları

| Kısayol | Açıklama |
|---------|----------|
| `Super + 1-10` | Çalışma alanına geç |
| `Super + Shift + 1-10` | Pencereyi çalışma alanına taşı |
| `Super + S` | Özel çalışma alanını aç/kapat |

### Medya Kontrolleri

| Kısayol | Açıklama |
|---------|----------|
| `XF86AudioRaiseVolume` | Ses seviyesini artır |
| `XF86AudioLowerVolume` | Ses seviyesini azalt |
| `XF86AudioMute` | Sesi aç/kapat |
| `XF86MonBrightnessUp` | Parlaklığı artır |
| `XF86MonBrightnessDown` | Parlaklığı azalt |

### Screenshot

| Kısayol | Açıklama |
|---------|----------|
| `Super + Print` | Alan seçimi ile screenshot |
| `Super + Shift + Print` | Tüm ekran screenshot |
| `Super + Ctrl + Print` | Screenshot'u kaydet |

## 🔧 Konfigürasyon

### Ana Konfigürasyon Dosyaları

- `~/.config/hypr/hyprland.conf` - Ana Hyprland konfigürasyonu
- `~/.config/waybar/config` - Waybar konfigürasyonu
- `~/.config/waybar/style.css` - Waybar stilleri
- `~/.config/rofi/config.rasi` - Rofi konfigürasyonu
- `~/.config/kitty/kitty.conf` - Kitty terminal konfigürasyonu

### Özelleştirme

Konfigürasyon dosyalarını düzenleyerek:
- Renk şemalarını değiştirebilirsiniz
- Klavye kısayollarını özelleştirebilirsiniz
- Pencere kurallarını ayarlayabilirsiniz
- Animasyonları değiştirebilirsiniz

## 📁 Dizin Yapısı

```
dotfilestr/
├── .config/
│   ├── hypr/
│   │   └── hyprland.conf
│   ├── waybar/
│   │   ├── config
│   │   └── style.css
│   ├── rofi/
│   │   └── config.rasi
│   ├── kitty/
│   │   └── kitty.conf
│   ├── nvim/
│   │   └── init.lua
│   ├── swaylock/
│   │   └── config
│   ├── wlogout/
│   │   ├── layout
│   │   └── style.css
│   ├── hyprpaper/
│   │   └── hyprpaper.conf
│   ├── gtk-3.0/
│   │   └── settings.ini
│   ├── gtk-4.0/
│   │   └── settings.ini
│   └── fontconfig/
│       └── fonts.conf
├── scripts/
│   ├── setup.sh
│   ├── install.sh
│   ├── update.sh
│   └── screenshot.sh
├── themes/
│   ├── catppuccin.conf
│   ├── dracula.conf
│   ├── nord.conf
│   └── apply_theme.sh
├── .bashrc
├── .zshrc
├── .gitconfig
├── .inputrc
├── .gitignore_global
├── README.md
├── INSTALL.md
└── SUMMARY.md
```

## 🚀 Güncelleme

```bash
# Konfigürasyonları güncelle
./scripts/update.sh
```

## 🐛 Sorun Giderme

### Yaygın Sorunlar

1. **Waybar görünmüyor**
   ```bash
   pkill waybar && waybar &
   ```

2. **Rofi açılmıyor**
   ```bash
   rofi -show drun
   ```

3. **Screenshot çalışmıyor**
   ```bash
   sudo pacman -S grimblast
   ```

4. **Ses kontrolleri çalışmıyor**
   ```bash
   sudo pacman -S pavucontrol
   ```

### Log Dosyaları

```bash
# Hyprland logları
journalctl -u Hyprland

# Waybar logları
waybar --log-level debug
```

## 🤝 Katkıda Bulunma

1. Fork yapın
2. Feature branch oluşturun (`git checkout -b feature/amazing-feature`)
3. Commit yapın (`git commit -m 'Add amazing feature'`)
4. Push yapın (`git push origin feature/amazing-feature`)
5. Pull Request oluşturun

## 📄 Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Detaylar için `LICENSE` dosyasına bakın.

## 🙏 Teşekkürler

- [Hyprland](https://hyprland.org/) - Wayland compositor
- [Waybar](https://github.com/Alexays/Waybar) - Status bar
- [Rofi](https://github.com/davatorium/rofi) - Application launcher
- [Kitty](https://sw.kovidgoyal.net/kitty/) - Terminal emulator

## 📞 İletişim

Sorularınız için issue açabilir veya pull request gönderebilirsiniz.

---

**Not**: Bu konfigürasyon Arch Linux için optimize edilmiştir. Diğer dağıtımlarda bazı ayarlar farklı olabilir.
