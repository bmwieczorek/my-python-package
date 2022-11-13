from setuptools import setup, find_packages

VERSION = '0.0.1'
DESCRIPTION = 'My Python package description'
LONG_DESCRIPTION = 'My Python package long description'

setup(
    name="my-package",
    version=VERSION,
    author="Bartek",
    author_email="<youremail@email.com>",
    description=DESCRIPTION,
    long_description=LONG_DESCRIPTION,
    url="https://example.com",
    packages=find_packages(),
    install_requires=[],  # add any additional packages
    keywords=['python', 'bartek', 'my-package'],
    classifiers=[
        "Programming Language :: Python :: 3",
        "License :: OSI Approved :: MIT License",
        "Operating System :: OS Independent"
    ],
    python_requires='>=3.8'
)
