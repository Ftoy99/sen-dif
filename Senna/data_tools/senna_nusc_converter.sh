echo "Start generating dataset..."

python3 \
    Senna/data_tools/senna_nusc_data_converter.py \
    nuscenes \
    --root-path nu_mini \
    --out-dir nu_mini_adapted \
    --extra-tag senna_nusc \
    --version v1.0-mini \
    --canbus /mnt/jimmys/sen-dif/nu_mini/can_bus
