# from https://unix.stackexchange.com/a/337875
varmunge ()
{
    : '
    Invocation: varmunge <varname> <dirpath> [after]
    Function:   Adds <dirpath> to the list of directories in <varname>. If  <dirpath> is
    already present in <varname> then <varname> is left unchanged. If the third
    argument is "after" then <dirpath> is added to the end of <varname>, otherwise
    it is added at the beginning.
    Returns:    0 if everthing was all right, 1 if something went wrong.
    ' :
    local pathlist
    eval "pathlist=\"\$$1\"" 2>/dev/null || return 1
    case ":$pathlist:" in
        *:"$2":*)
            ;;
        "::")
            eval "$1=\"$2\"" 2>/dev/null || return 1
            ;;
        *)
            if [ "$3" = "after" ]; then
                eval "$1=\"$pathlist:$2\"" 2>/dev/null || return 1
            else
                eval "$1=\"$2:$pathlist\"" 2>/dev/null || return 1
            fi
            ;;
    esac
    return 0
}

