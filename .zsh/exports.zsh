if [[ $OSTYPE == linux-gnu ]]; then
    # Spark
    export PATH="/opt/spark/bin:$PATH"

elif [[ $OSTYPE == darwin* ]]; then
    # Locale
    export LC_ALL="en_US.UTF-8"
fi
