/*
 * Copyright (C) 2014, Jonatan Åkerlind
 *
 * This file is part of Heatcontrol.
 *
 * Heatcontrol is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * Heatcontrol is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Heatcontrol.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * \file
 *         The roomunit Contiki application part of Heatcontrol
 * \author
 *         Jonatan Åkerlind
 */

#include "contiki.h"
#include <stdio.h>

PROCESS(roomunit_process, "Roomunit process");
AUTOSTART_PROCESSES(&roomunit_process);

PROCESS_THREAD(roomunit_process, ev, data)
{
    PROCESS_BEGIN();
    printf("Hello World");
    PROCESS_END();
}
