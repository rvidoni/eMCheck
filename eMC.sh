#!/bin/sh 
# eMCheck - encrypt Mail Checker 
#
# Copyright (c) 2020, Renzo Vidoni - Reva Digital Solutions Ltd.
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are
# met:
# 
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 
# 3. Neither the name of author nor the names of its contributors may be
#    used to endorse or promote products derived from this software
#    without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
# OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

# ------------------------------------------------------------------- #
# Version: 6.2 - rev.: 0 - FOD - May 22 2020 - Public 01
# Version: 6.3 - rev.: 0 - FO  - Jun 19 2020 - modification: data to fetchmail
# Version: 6.3 - rev.: 1 - FOD - Jun 20 2020 - code revision
# Version: 6.4 - rev.: 0 - FOD - Jul 23 2020 - set -Cefu ; init vars
# ------------------------------------------------------------------- #

set -Cefu

	MCHECK=""
	MCPATH=""

	MCHECK=$(readlink -f "$0")
	MCPATH=$(dirname "$MCHECK")
	export MCPATH

	openssl aes-256-ctr -d -md sha256  <>  "$MCPATH"/eMCheck.esh | sh

