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
