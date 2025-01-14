# ManuSpectrum Package

## Install (alpha)

```shell
wget https://github.com/CRC-Centre-Recherche-Conservation/manuspectrum-pkg/archive/master.zip
```

```shell
unzip master.zip -d manuspectrum/
mv manuspectrum-pkg-main/ pkg/
```

add this params in settings.py
```python
PACKAGE_DIR = os.path.join(os.path.dirname(APP_ROOT),'pkg')
```


```shell
python manage.py packages -o load_package -s pkg -db -y
```

## Credits

This project uses [Arches](https://www.archesproject.org/), an open-source platform for cultural heritage data management developed by the Getty Conservation Institute and the World Monuments Fund.

Arches is licensed under the [GNU Affero General Public License v3.0](https://www.gnu.org/licenses/agpl-3.0.html). For more details, visit their [Arches repository](https://github.com/archesproject/arches) and [Arches For Science](https://github.com/archesproject/arches-for-science).
