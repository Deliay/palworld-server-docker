#!/bin/sh

. ./PalServer.sh port=$PORT players=$MAX_PALYER -useperfthreads -NoAsyncLoadingThread -UseMultithreadForDS
