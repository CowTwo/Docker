//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
// 
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Lesser General Public License for more details.
// 
// You should have received a copy of the GNU Lesser General Public License
// along with this program.  If not, see http://www.gnu.org/licenses/.
// 

package inet.showcases.wireless.coexistence;

import inet.networklayer.configurator.ipv4.IPv4NetworkConfigurator;
import inet.node.inet.AdhocHost;
import inet.physicallayer.common.packetlevel.RadioMedium;
import inet.visualizer.integrated.IntegratedCanvasVisualizer;


network CoexistenceShowcase
{
    submodules:
        visualizer: IntegratedCanvasVisualizer {
            @display("p=50,50");
        }
        configurator: IPv4NetworkConfigurator {
            @display("p=50,100");
        }
        radioMedium: RadioMedium {
            @display("p=50,150");
        }
        wifiHost1: AdhocHost {
            @display("p=407.91748,119.189995");
        }
        wifiHost2: AdhocHost {
            @display("p=407.91748,314.415");
        }
        wpanHost1: AdhocHost {
            @display("p=234.26999,215.775");
        }
        wpanHost2: AdhocHost {
            @display("p=511.695,215.775");
        }
}
