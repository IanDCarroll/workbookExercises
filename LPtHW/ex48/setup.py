try:
    from setuptools import setup
except ImportError:
    from distutils.core import setup

config = {
    'description': 'Learn Python the Hard Way Excersise 48',
    'author': 'Ian Carroll',
    'url': 'https://github.com/IanDCarroll/workbookExercises',
    'download_url': 'https://github.com/IanDCarroll/workbookExercises',
    'author_email': 'ian.d.carroll@gmail.com',
    'version': '0.1',
    'install_requires': ['nose'],
    'packages': ['ex48'],
    'scripts': [],
    'name': 'ex48'
}

setup(**config)
