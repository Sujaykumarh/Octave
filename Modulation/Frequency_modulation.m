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
% Octave program to illustrate Frequency modulation
% ==================================================



% Init by cleariing workspace
clc; clear all; close all;

ROWS = 3; % Subplot ROWS
COLS = 1; % Subplot COLS

t = linspace(0, 1, 500); % Time


% ====================
% Signal Generator
% ====================

function sig = SignalGen(am, theta)
% generates a signal for Am*sin(theta)

sig = am * sin(theta);

endfunction


% ====================
% Message Signal
% ====================

fm = 5; % Mesage frequency in Hz
Am = 1; % Mesage amplitude
thetaM = 2 * pi * fm * t; % Theta argument for SignalGen

m = SignalGen(Am, thetaM); % Message signal

% plot Message signal
subplot(ROWS, COLS, 1);
plot(t, m);
title("Message Signal");




% ====================
% Carrier Signal
% ====================

fc = 30; % Carrier frequency in Hz
Ac = 1; % Carrier Amplitude
thetaC = 2 * pi * fc * t; % Theta argument for SignalGen

c = SignalGen(Ac, thetaC); % Carrier signal

% plot Carrier signal
subplot(ROWS, COLS, 2);
plot(t, c);
title("Carrier Signal");





% ====================
% Frequency Modulation 
% ====================

beta = 2.8*fc / fc; % beta = del f / fm

thetaMod = thetaC + (beta*m);

x = SignalGen(Ac, thetaMod); % Modulated signal

% plot Modulated signal
subplot(ROWS, COLS, 3);
plot(t, x);
title("Modulated Signal");
