# use arverify to verify accuraterip checksums of flac files in a directory
function arv {
    local dir=${@:-$PWD}
    local logfile="${dir}"/accuraterip.log
    local out=$(arverify -v "${dir}"/*.flac)
    # early exit if arverify command did not work
    # this will occur when the out variable contains only 2 lines
    if [ "$(echo "$out" | wc -l)" == "2" ]; then
        return 1
    fi
    # cleanup and remove path names in log file
    local IFS_BAK=$IFS
    IFS=$'\n'
    for i in $out; do
        if [[ "$i" =~ ".flac" ]]; then
            echo "" >> $logfile
            basename "$i" >> $logfile
        else
            echo "$i" >> $logfile
        fi
    done
    IFS=$IFS_BAK
}


# sox function for displying spectrogram of a music file
function spec { sox "$@" -n spectrogram -t "$@"; }


# fix offset of lossless music files
function ofix { fixoffset -f flac $1 *.${2:-flac}; }


# burn iso to usb using diskdestroyer
function writeusb { sudo dd bs=4M if=$1 of=$2 status=progress oflag=sync; }

# extract archives
function ex {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
