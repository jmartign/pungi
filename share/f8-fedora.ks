# Kickstart file for composing the "Fedora" spin of Fedora 8

# Use a part of 'iso' to define how large you want your isos.
# Only used when composing to more than one iso.
#part iso --size=4998

# Add the repos you wish to use to compose here.  At least one of them needs group data.
repo --name=rawhide  --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=rawhide&arch=$basearch
repo --name=rawhide-source  --mirrorlist=http://mirrors.fedoraproject.org/mirrorlist?repo=rawhide-source&arch=$basearch

# Package manifest for the compose.  Uses repo group metadata to translate groups.
# (@base is added by default unless you add --nobase to %packages)
%packages
# core
@core
@base-x
kernel*
# Hardware stuff
@hardware-support
@dial-up
# Desktop Packages
@gnome-desktop
@kde-desktop
echo-icon-theme
tracker
gnash
liferea
# apps
@authoring-and-publishing
@editors
emacs
@games
@graphical-internet
@graphics
@office
@sound-and-video
@text-internet
@system-tools
wireshark-gnome
# Devel packages
@development-libs
@development-tools
@gnome-software-development
@kde-software-development
@web-development
@x-software-development
# Server packages
@dns-server
@ftp-server
@mail-server
@mysql
@network-server
@news-server
@printing
@server-cfg
@smb-server
@sql-server
@web-server --optional
# Virt group
@virtualization --optional
# filesystem stuff
reiserfs-utils
xfsprogs
jfsutils
# Languages
@afrikaans-support
@arabic-support
@assamese-support
@basque-support
@bengali-support
@brazilian-support
@breton-support
@british-support
@bulgarian-support
@catalan-support
@chinese-support
@croatian-support
@czech-support
@danish-support
@dutch-support
@estonian-support
@faeroese-support
@finnish-support
@french-support
@gaelic-support
@galician-support
@german-support
@greek-support
@gujarati-support
@hebrew-support
@hindi-support
@hungarian-support
@icelandic-support
@indonesian-support
@irish-support
@italian-support
@japanese-support
@kannada-support
@korean-support
@lithuanian-support
@malay-support
@malayalam-support
@marathi-support
@northern-sotho-support
@norwegian-support
@oriya-support
@polish-support
@portuguese-support
@punjabi-support
@romanian-support
@russian-support
@serbian-support
@sinhala-support
@slovak-support
@slovenian-support
@southern-ndebele-support
@southern-sotho-support
@spanish-support
@swati-support
@swedish-support
@tamil-support
@telugu-support
@thai-support
@tsonga-support
@tswana-support
@turkish-support
@ukrainian-support
@urdu-support
@venda-support
@welsh-support
@xhosa-support
@zulu-support
# Compose Needs
anaconda-runtime
iscsi-initiator-utils
memtest86+
vnc-server
%end
