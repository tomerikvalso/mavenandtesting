#!/bin/bash
echo """
runtime: java
env: flex
runtime_config:
  operating_system: "ubuntu24"
  runtime_version: "25"

manual_scaling:
  instances: 1
"""
