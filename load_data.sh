#!/bin/bash

eval MSPATH=$PWD
read -e -p "Enter the path to arches: " ARCHESPATH
eval ARCHESPATH=$ARCHESPATH
cd $ARCHESPATH

# Rebuild db
python manage.py packages -o setup_db

# Load Liverpool specific Arches defaut thesauri and collections
python manage.py packages -o import_reference_data -s $MSPATH/reference_data/concepts/aat_thesaurus.xml -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $MSPATH/reference_data/concepts/agorha_material_description_characteristics.xml -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $MSPATH/reference_data/concepts/agorha_materials.xml -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $MSPATH/reference_data/concepts/agorha_techniques.xml -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $MSPATH/reference_data/concepts/agorha_type_of_material_description.xml -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $MSPATH/reference_data/concepts/agorha_type_of_work.xml -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $MSPATH/reference_data/concepts/database_manuspectrum_concept.xml -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $MSPATH/reference_data/concepts/frollo_analysis_techniques.xml -ow overwrite -st keep
python manage.py packages -o import_reference_data -s $MSPATH/reference_data/concepts/loterre_concepts.xml -ow overwrite -st keep

python manage.py packages -o import_reference_data -s $MSPATH/reference_data/collections/collections.xml -ow overwrite -st keep

# Load Resource Models, Branches
python manage.py packages -o import_graphs -s arches/db/graphs/branches
# python manage.py packages -o import_graphs -s $MSPATH/graphs/branches/
python manage.py packages -o import_graphs -s $MSPATH/graphs/resource_models/
