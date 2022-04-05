# Python Behave sample project
Feature: Mover Settlement automation e2e Testing

  Scenario Outline: mover automate e2e test for DPX
    Given shipment details <estimateDistance> and <estimateStartTime> and <estimateEndTime> and <vehicleType> and <externalId> and <noofworkorders> and <supplier>
    When the input is ready
    Then post the shipment in data loader
    Then get the shipment details
    Then validate the total cost for mover shipment <exptotalcost>
    Examples:
    |estimateDistance |estimateStartTime  |estimateEndTime    |vehicleType            |externalId |noofworkorders|exptotalcost|supplier|
    |56.20            |2022-02-22T07:45:00|2022-02-22T13:59:23|ElectricPanelVan       |918        |2             |418.17      |DPX    |
    |56.91            |2022-02-22T07:45:00|2022-02-22T14:21:19|Panelvan               |918        |1             |435.00      |DPX    |
    |63.12            |2022-02-22T07:45:00|2022-02-22T14:53:58|BoxvanNoTaillift       |918        |4             |471.27      |DPX    |
    |110.62           |2022-02-22T07:45:00|2022-02-22T15:35:39|BoxvanTaillift         |918        |5             |550.97      |DPX    |
    |28.90            |2022-02-22T07:45:00|2022-02-22T11:34:21|BoxvanTrailerNoTaillift|918        |2             |267.90      |DPX    |
    |64.91            |2022-02-22T07:45:00|2022-02-22T13:39:03|BoxvanTrailerTaillift  |918        |1             |419.60      |DPX    |
    |104.76           |2022-02-22T07:45:00|2022-02-22T11:59:19|TruckLargeTaillift     |918        |5             |449.43      |DPX    |
    
  Scenario Outline: mover automate e2e test for REAN
    Given shipment details <estimateDistance> and <estimateStartTime> and <estimateEndTime> and <vehicleType> and <externalId> and <noofworkorders> and <supplier>
    When the input is ready
    Then post the shipment in data loader
    Then get the shipment details
    Then validate the total cost for mover shipment <exptotalcost>
    Examples:
    |estimateDistance |estimateStartTime  |estimateEndTime    |vehicleType         |externalId |noofworkorders|exptotalcost|supplier|
    |121.07           |2022-02-22T07:45:00|2022-02-22T12:02:18|ElectricPanelVan    |101        |2             |465.75      |REAN    |
    |108.27           |2022-02-22T07:45:00|2022-02-22T14:31:38|TruckLargeNoTaillift|101        |4             |588.50      |REAN    |
    |115.63           |2022-02-22T07:45:00|2022-02-22T11:21:00|BoxvanNoTaillift    |101        |3             |462.00      |REAN    |

  
  1 feature passed, 0 failed, 0 skipped
10 scenarios passed, 0 failed, 0 skipped
50 steps passed, 0 failed, 0 skipped, 0 undefined
Took 0m26.061s



