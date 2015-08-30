[![Build
Status](https://secure.travis-ci.org/chriscowley/chriscowley-pulp.png)](http://travis-ci.org/chriscowley/chriscowley-pulp)

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with pulp](#setup)
    * [What pulp affects](#what-pulp-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with pulp](#beginning-with-pulp)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Installs a Pulp server, as the existing modules I found on the forge did not work.

## Module Description

Installs Pulp. That is all

## Setup

### What pulp affects

* pulp-server-qpid

### Setup Requirements **OPTIONAL**

Will require both QPID and MongoDB installed already

### Beginning with pulp

node { pulp-server:
  class { 'pulp': }
}

## Usage

TBC

## Reference

TBC

## Limitations

TBC

## Development

TBC

