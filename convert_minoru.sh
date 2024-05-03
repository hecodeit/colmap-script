python colmap-script/convert.py -s DJI_20240224_merged/
cd DJI_20240224_merged/
mv DJI_20240224_merged/images/ DJI_20240224_merged/zip/
mv DJI_20240224_merged/sparse/ DJI_20240224_merged/zip/
zip -r DJI_20240224_merged.zip DJI_20240224_merged/zip/
aws s3 cp DJI_20240224_merged.zip s3://mirai.es/minoru_colmap/