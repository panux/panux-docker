for push in $@; do
    docker push panux/$push:x86_64
    docker push panux/$push:x86
done
