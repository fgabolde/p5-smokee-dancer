#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";

use dancing::docker::app;
dancing::docker::app->to_app;
