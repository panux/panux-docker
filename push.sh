for push in $@; do
    docker push panux/$push:x86_64
done
