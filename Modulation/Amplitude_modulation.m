% =============================================================================
%
%  Copyright (c) 2017 Sujaykumar.Hublikar <hello@sujaykumarh.com>
%  
%  Licensed under the Apache License, Version 2.0 (the "License");
%  you may not use this file except in compliance with the License.
%  You may obtain a copy of the License at
%  
%      http://www.apache.org/licenses/LICENSE-2.0
%  
%  Unless required by applicable law or agreed to in writing, software
%  distributed under the License is distributed on an "AS IS" BASIS,
%  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%  See the License for the specific language governing permissions and
%  limitations under the License.
%
% =============================================================================



% Refrence "An Introduction to Analog and Digital Communications" by Simon Haykin   ISBN: 81-265-0932-5


% ==================================================
% Octave program to illustrate Amplitude modulation
% ==================================================



% Init by cleariing workspace
clc; clear all; close all;

ROWS = 3; % Subplot ROWS
COLS = 1; % Subplot COLS

t = linspace(0, 1, 500); % Time


% ====================
% Message Signal
% ====================

fm = 2; % Mesage frequency in Hz
Am = 1; % Mesage amplitude

m = Am * sin(2*pi*fm*t); % Message signal

% plot Message signal
subplot(ROWS, COLS, 1);
plot(t, m);
title("Message Signal");



% ====================
% Carrier Signal
% ====================

fc = 100; % Carrier frequency in Hz
Ac = 1; % Carrier Amplitude

c = sin(2*pi*fc*t); % Carrier signal


% plot Carrier signal
subplot(ROWS, COLS, 2);
plot(t, c);
title("Carrier Signal");




% ====================
% Amplitude Modulation
% ====================

ka = .9; 
% ka is modulation sensitivity 
% for ka < 1 modulation is less than 100%
% for ka = 1 modulation is 100%
% for ka > 1 modulation is more than 100%

x = (1 + m * ka) .* c; % Modulated signal

% plot Modulated signal
subplot(ROWS, COLS, 3);
plot(t, x);
title("Modulated Signal");
