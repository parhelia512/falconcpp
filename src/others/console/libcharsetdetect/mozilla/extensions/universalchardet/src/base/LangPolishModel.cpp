/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* ***** BEGIN LICENSE BLOCK *****
 * Version: MPL 1.1/GPL 2.0/LGPL 2.1
 *
 * The contents of this file are subject to the Mozilla Public License Version
 * 1.1 (the "License"); you may not use this file except in compliance with
 * the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 *
 * The Original Code is Mozilla Communicator client code.
 *
 * The Initial Developer of the Original Code is
 * Netscape Communications Corporation.
 * Portions created by the Initial Developer are Copyright (C) 1998
 * the Initial Developer. All Rights Reserved.
 *
 * Contributor(s):
 *
 * Alternatively, the contents of this file may be used under the terms of
 * either the GNU General Public License Version 2 or later (the "GPL"), or
 * the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
 * in which case the provisions of the GPL or the LGPL are applicable instead
 * of those above. If you wish to allow use of your version of this file only
 * under the terms of either the GPL or the LGPL, and not to allow others to
 * use your version of this file under the terms of the MPL, indicate your
 * decision by deleting the provisions above and replace them with the notice
 * and other provisions required by the GPL or the LGPL. If you do not delete
 * the provisions above, a recipient may use your version of this file under
 * the terms of any one of the MPL, the GPL or the LGPL.
 *
 * ***** END LICENSE BLOCK ***** */

#include "nsSBCharSetProber.h"

static const unsigned char polish_iso_8859_2CharToOrderMap[] = 
{
255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,
255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,
255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,
255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,255,
255, 34, 39, 37, 46, 54, 59, 51, 43, 35, 42, 45, 49, 41, 32, 47,
 31,180, 50, 33, 38, 53, 60, 30, 61, 58, 40,255,255,255,255,255,
255,  1, 21, 11, 13,  3, 44, 23, 26,  2, 18, 15, 20, 14,  6,  4,
 16, 63,  7,  8, 12, 19, 52,  9, 64, 10,  5,255,255,255,255,255,
179,178,177,176,175,174,173,172,171,170,169,168,167,166,165,164,
163,162,161,160,159,158,157,156,155,154,153,152,151,150,149,148,
147, 70,146, 57,145,144, 55, 78,143,142,141,140, 74,139,138, 56,
137, 24,136, 17,135, 82, 27,134,133,132,131, 65, 48,130,129, 25,
128,127,126,125,124,123, 77,122,121,120, 66,119,118,117,116,115,
114, 68,113, 62,112,111,110,109,108,107,106,105, 81,104,103,102,
101, 76, 69,100, 80, 99, 29, 71, 98, 67, 22, 97, 96, 95, 79, 73,
 94, 36, 93, 28, 92, 91, 75, 90, 89, 88, 87, 86, 72, 85, 84, 83,
};

static const PRUint8 polishLangModel[] = 
{
2,2,2,2,3,3,3,3,3,2,3,3,3,3,3,3,3,3,3,3,3,0,3,0,3,2,3,0,3,0,0,0,
0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,2,3,3,3,3,3,3,3,0,3,3,3,3,3,2,3,3,3,3,3,3,3,3,3,0,3,3,3,0,0,0,
0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,
2,2,2,3,3,3,3,3,3,2,3,3,3,3,3,3,3,3,2,3,3,0,3,0,3,2,3,0,3,0,0,0,
0,0,0,3,0,0,0,0,0,0,0,2,0,0,0,3,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,
2,3,2,2,3,3,3,3,3,2,3,3,3,3,3,3,3,3,2,3,3,0,3,0,3,2,3,0,3,0,0,0,
0,0,0,3,0,0,0,0,0,0,0,3,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,2,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,2,2,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,2,3,3,3,0,3,3,3,3,0,3,2,0,2,3,0,0,3,3,3,0,0,0,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,2,3,2,3,3,2,3,3,3,2,2,2,3,3,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,3,3,2,2,3,3,3,3,0,3,3,3,3,2,3,2,0,2,0,3,0,2,0,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,3,3,3,3,0,3,3,3,3,2,3,3,3,2,3,2,2,3,0,3,0,0,3,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,2,2,3,3,3,3,3,3,0,3,3,3,3,3,3,3,3,2,3,3,2,3,2,3,2,3,0,3,0,0,0,
0,0,0,2,0,0,0,0,0,0,0,2,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,3,3,0,0,2,3,0,2,0,2,3,0,0,2,3,2,0,3,0,3,0,3,0,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,0,3,3,3,3,3,3,2,2,2,3,2,3,2,3,3,0,3,0,3,0,2,0,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,2,3,3,3,3,3,3,3,3,3,2,3,3,3,3,3,2,3,3,3,3,2,3,2,2,2,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,0,3,3,2,2,3,2,2,2,2,3,3,2,2,3,2,3,3,2,3,2,0,2,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,0,3,3,3,3,0,2,3,0,0,2,0,3,0,3,3,2,3,2,3,3,0,2,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,0,3,3,3,0,3,2,2,0,0,2,2,3,0,3,3,0,3,0,2,0,2,0,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,0,3,3,2,3,0,2,0,3,2,3,2,2,3,0,2,0,3,0,3,3,3,3,2,0,0,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,2,3,3,3,2,0,3,2,3,3,2,2,0,0,3,2,2,3,2,3,2,0,3,2,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,2,2,2,3,3,3,3,3,0,3,3,3,3,3,3,3,3,0,3,3,0,3,0,3,0,3,0,2,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,2,3,0,3,2,0,3,2,2,3,3,0,0,2,3,3,3,3,2,3,2,0,2,2,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,2,3,3,2,2,3,2,2,0,0,2,0,3,2,3,3,0,3,0,3,0,0,0,2,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,3,0,0,3,0,0,3,3,3,0,3,3,3,0,0,2,3,0,2,0,3,0,3,0,2,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,0,3,3,0,3,0,0,0,3,2,0,0,3,2,3,3,0,3,0,3,2,2,0,3,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,3,0,0,3,2,0,3,3,3,0,3,3,3,0,0,0,2,0,3,0,3,0,2,0,3,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,0,3,3,0,3,0,2,2,3,2,0,3,2,3,0,2,0,2,2,2,3,2,3,0,0,0,2,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,3,3,0,3,2,0,3,3,3,2,0,2,0,0,3,0,3,2,0,2,0,2,2,0,2,2,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,3,3,0,3,0,3,0,0,3,0,3,0,0,0,3,2,0,0,0,0,0,0,0,3,0,0,0,
0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,2,0,3,2,3,0,3,2,3,2,2,2,3,3,0,3,3,0,3,0,3,0,2,0,2,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,2,0,0,0,2,2,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,2,2,2,2,2,3,0,3,2,2,0,0,2,2,2,0,0,0,0,2,0,2,0,0,2,2,0,0,0,2,
2,2,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,
3,3,2,3,0,0,3,2,0,2,0,0,0,0,0,0,2,0,2,2,0,0,0,0,0,0,0,2,0,0,0,0,
0,0,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,
0,2,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,
2,3,2,2,3,2,0,0,2,2,2,3,0,2,3,3,3,0,0,0,0,0,0,2,0,2,0,0,0,0,2,0,
0,0,2,0,0,2,0,2,0,0,0,0,2,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,2,2,2,2,0,0,2,0,0,2,2,0,0,0,0,3,2,0,0,0,2,0,0,0,0,2,0,2,
2,0,0,0,2,0,0,2,2,2,0,0,2,2,0,0,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,2,0,2,2,0,2,0,2,2,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,
2,2,2,0,2,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,2,0,0,0,0,0,2,2,0,0,0,
0,0,0,0,0,0,0,3,0,0,3,0,0,2,2,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,2,0,3,3,0,2,0,0,0,0,0,0,0,0,0,0,0,2,2,0,0,0,0,0,3,0,2,0,0,0,0,
0,2,2,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,
3,2,3,3,0,0,3,0,2,2,2,0,0,0,0,0,2,0,2,0,0,2,0,2,0,0,0,0,0,2,0,0,
0,2,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,2,2,3,0,0,2,0,0,3,0,0,0,0,0,0,2,0,2,2,0,2,0,2,0,0,0,2,0,0,0,0,
0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,
3,2,2,2,0,3,2,0,2,0,0,2,2,2,0,0,2,2,0,0,2,0,2,0,0,0,0,0,0,0,0,0,
0,2,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,2,0,0,0,2,0,0,0,0,0,0,
3,3,2,3,0,2,2,0,0,2,0,0,0,0,0,0,2,0,2,0,0,2,0,0,0,0,0,3,0,0,0,2,
0,2,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,0,3,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,
0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,
3,2,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,3,2,3,0,2,2,0,0,0,0,2,0,0,2,0,0,2,2,2,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
3,2,0,3,0,2,3,2,2,0,0,3,0,0,0,0,2,0,2,2,0,2,0,0,0,0,0,0,0,0,0,0,
0,2,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,
3,2,2,3,3,0,2,0,2,2,0,0,0,0,0,0,2,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,
0,2,0,0,0,0,0,2,0,0,0,0,0,0,2,2,0,2,0,0,0,2,0,0,0,2,0,0,0,0,0,0,
0,0,0,0,0,2,0,2,2,0,2,3,3,0,2,2,0,2,0,2,2,0,2,0,0,0,2,0,0,2,2,2,
2,0,0,0,2,2,0,0,2,0,0,0,2,2,0,0,2,2,0,0,0,0,2,0,2,0,0,0,0,0,0,2,
0,0,0,0,0,3,2,0,2,0,2,0,2,2,0,0,0,0,0,2,2,0,0,0,0,0,0,0,2,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,3,3,3,0,0,0,0,2,2,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,2,2,0,0,0,0,0,0,0,0,0,0,0,2,0,2,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,
2,0,2,3,2,0,0,0,2,2,0,0,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,2,0,2,0,0,
0,2,0,0,0,2,0,2,0,0,0,0,0,0,2,0,0,0,0,0,2,2,0,0,0,2,0,0,0,2,0,0,
2,2,2,2,0,2,3,0,2,0,0,0,3,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,
0,2,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,3,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,2,2,2,0,2,0,2,2,2,2,0,2,0,0,2,0,0,0,0,0,2,0,0,0,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,2,0,0,2,2,0,0,0,0,0,0,0,0,0,2,0,2,
2,0,0,0,2,0,0,2,2,2,0,0,2,0,0,0,2,2,2,0,0,0,2,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,2,0,0,2,0,2,0,0,2,0,2,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,2,
0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,0,3,2,0,0,0,0,0,2,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,
2,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,
0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,
0,0,0,0,2,0,0,0,0,0,0,0,2,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,2,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,
0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,
};

const SequenceModel iso_8859_2polishModel = 
{
  polish_iso_8859_2CharToOrderMap,
  polishLangModel,
  (float)0.974309,
  PR_TRUE,
  "ISO-8859-2",
  "polish"
};