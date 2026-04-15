# ===================
# EMPTY ARGUMENTS CHECK
# ===================

# check if arg is provided, if not, print instructions and exit
check_arg() {
    local file_name="$1"
    local is_arg_provided="$2"

    if [  -z "$is_arg_provided" ]; then
        echo "Usage: ./src/${file_name} <your-header-here>"
        exit 1
    fi
}

# ===================
# OVERFLOWS CHECK
# ===================

check_overflow() {
    local string_length="$1"

    if [ "$string_length" -gt "$INNER_WIDTH" ]; then
        echo "Error: Header is too long. Maximum length is $INNER_WIDTH characters."
        echo "       Your given header length: $string_length characters."
        exit 1
    fi
}

# ===================
# HEADER CONSTANTS
# ===================

# header comment symbol length
TOTAL_WIDTH=64

# 4 - double_slash & hashtag
# 9 - SGML
FOUR=4
NINE=9

# ===================
# HEADER CALCULATIONS
# ===================

# return the length of the given string
get_input_length() {
    local input="$*"
    echo "${#input}"
}

# calculate padding to center the string
get_padding() {
    local input_length="$1"
    echo $(( (INNER_WIDTH - input_length) / 2 ))
}

# =====================================
# INITIALIZATION
# =====================================

init() {
    DECORATOR_LENGTH="${1:-0}"
    INNER_WIDTH=$(( TOTAL_WIDTH - DECORATOR_LENGTH ))
    shift

    # check if arg is provided
    check_arg "$(basename $0)" "$1"

    # capture input arg & calculate its length
    INPUT="$*"
    INPUT_LENGTH=$(get_input_length "$INPUT")

    # check for overflow
    check_overflow "$INPUT_LENGTH"

    # calculate padding to center the string
    PADDING=$(get_padding "$INPUT_LENGTH")
}

