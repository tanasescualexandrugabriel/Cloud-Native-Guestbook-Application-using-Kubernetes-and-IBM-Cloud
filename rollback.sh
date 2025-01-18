#!/bin/bash
# Rollback to the previous deployment
kubectl rollout undo deployment/guestbook
