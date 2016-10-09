try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'description': 'Evercise 47',
    'author': 'Ian Carroll',
    'url': 'https://github.com/IanDCarroll/workbookExercises',
    'download_url': 'https://github.com/IanDCarroll/workbookExercises',
    'author_email': 'ian.d.carroll@gmail.com',
    'version': '0.1',
    'install_requires': ['nose'],
    'packages': ['ex47'],
    'scripts': [],
    'name': 'ex47'
}

setup(**config)
