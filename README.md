# **Bees and Flowers**


## Model Description 

Bees are crucial for the environment. They pollinate flowers, provide honey, build hives, and help maintain ecosystems. This cellular automaton focuses on their most important role: pollination. Not only is pollination necessary for plants, it is also paramount for the survival of humans and all other organisms. As plants form the base of food chains in most ecosystems, they need bees to pollinate them; otherwise, plants will stop reproducing. Consequently, organisms would cease to exist (as every organism, in one way or another, relies on plants for food and oxygen). This automaton will show the symbiotic relationship between bees and flowers: how bees pollinate flowers and how flowers provide them with pollen and nectar. 


## Possible States of a Cell

![Picture of all possible states of a cell](https://user-images.githubusercontent.com/83916285/161852518-c4d37822-6611-48b2-8aef-3624f85ffbd1.png)


The data type of all the cells is color. The colour of the flowers indicates the amount of pollen and nectar. The unpollinated flower has the highest amount, while the pollinated flower has the least. Therefore, the bee pollinates any non-pollinated flower (unpollinated flower, phase 1, 2, or 3 flowers) until it becomes a pollinated flower. Over time, going in the opposite direction, the pollinated flower progresses through a phase 3 flower, then a phase 2 flower until it becomes the unpollinated flower. 

The grass cell becomes the bee cell when a bee moves to it, while the previous bee cell becomes a grass cell as the bee is no longer there in the next generation.


## Evolution Rules

A bee first scans 120 nearest cells relative to the bee to find the nearest unpollinated flower (or any phase 1, 2, or 3 flower). If it detects a flower, it will move toward it (one cell at a time). If it does not, it will randomly move one or two cells in any direction until it finds one in its range. When the bee is adjacent to an unpollinated flower, the flower turns redder until it turns red (becomes pollinated). After pollinating a flower, the bee ignores it and proceeds to scan for another unpollinated flower, starting the cycle again. Over time, the flower becomes pinker until it turns pink (becoming unpollinated ). If a bee detects this flower (at whichever phase), it will still pollinate it. Eventually, if all flowers are pollinated (or the bee does not detect it), the bee will move randomly within the grid.


## Sample Diagrams
![Picture of first 2 generations](https://github.com/irtazahasan-sm/BeesAndFlowers/assets/83916285/bb4a8a44-b92e-4703-8c56-9f11f1eba0c4)
![Pictures of generations 3 through 7](https://user-images.githubusercontent.com/83916285/161854396-cf59f30a-341b-41e5-a249-8052f02c1f9d.png)
![Picture of generation n + 1](https://user-images.githubusercontent.com/83916285/161854517-a1419c1f-17e5-4b9b-ba07-5bcbb9c6db65.png)




## Strengths and Weaknesses


### Predictions



* Bees’ movement
    * Bees move from flower to flower and prioritise the nearest flower (if all flowers are the same species). This can be seen when the bee scans the nearest 120 cells and goes towards the nearest flower to pollinate it.
* Flowers’ pollination
    * Bees ignore pollinated flowers because they do not have nectar and pollen. As flowers produce more nectar and pollen, bees come back to pollinate it again. The flowers’ transition from phases 1, 2, 3, pollinated and unpollinated states accurately show that when a bee extracts nectar and pollen from the flower, the nectar and pollen decrease (as denoted by the increase in pinkness) while the flower’s nectar and pollen increase over time (as denoted by the increase in redness).


### Simplifying Assumptions



* Bees have constant speeds 
    * In the real world, bees move at varying speeds. This is influenced by variable wind speeds, fatigue, and weather.
* No predators (or competitors)
    * In the real world, predators such as bears, raccoons, wasps, and skunks will affect the number of bees. Furthermore, competitors (like birds, butterflies, etc.) will interfere with bees’ pollination (as they also pollinate).
* One type of flower 
    * In the real world, there are different types of flowers. Some of which bees prefer more.
* Bees pollinate without going back to their hives and can hold seemingly infinite amounts of nectar
    * In the real world, bees gather pollen and nectar for only a finite time since they have a limited capacity to carry nectar. Eventually, they deposit it into their hives.
* All flowers produce nectar and pollen at the same rate
    * In the real world, plants from the same species will have different rates at which they produce nectar and pollen.
