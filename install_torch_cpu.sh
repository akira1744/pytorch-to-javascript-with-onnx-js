#!/bin/bash

poetry source add -p explicit pytorch https://download.pytorch.org/whl/cpu

poetry add --source pytorch torch torchvision

