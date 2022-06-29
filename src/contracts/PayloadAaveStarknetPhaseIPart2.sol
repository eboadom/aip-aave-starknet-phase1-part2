// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20} from '../interfaces/IERC20.sol';
import {IAaveEcosystemReserveController} from '../interfaces/IAaveEcosystemReserveController.sol';
import {IPool} from '../interfaces/IPool.sol';


 /** 
  * @title PayloadAaveStarknetPhaseIPart2
  * @author eboadom
  * @notice Simple Aave governance payload releasing X amount of USDC to a recipient account
  */
contract PayloadAaveStarknetPhaseIPart2 {
  IERC20 public constant USDC =
    IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);
  IERC20 public constant AUSDC =
    IERC20(0xBcca60bB61934080951369a648Fb03DF4F96263C);
  uint256 public constant USDC_AMOUNT = 92500 * 1e6; // 92'500 USDC
  IAaveEcosystemReserveController public constant CONTROLLER_OF_COLLECTOR =
    IAaveEcosystemReserveController(0x3d569673dAa0575c936c7c67c4E6AedA69CC630C);
  address public constant ETHEREUM_V2_COLLECTOR =
    0x464C71f6c2F760DdA6093dCB91C24c39e5d6e18c;
  IPool public constant POOL =
    IPool(0x7d2768dE32b0b80b7a3454c06BdAc94A69DDc7A9);
  address public constant FUNDS_RECIPIENT =
    0xB85fa70cf9aB580580D437BdEA785b71631a8A7c;

  function execute() external {
    CONTROLLER_OF_COLLECTOR.transfer(
      ETHEREUM_V2_COLLECTOR,
      AUSDC,
      address(this),
      USDC_AMOUNT
    );
    POOL.withdraw(address(USDC), USDC_AMOUNT, FUNDS_RECIPIENT);
  }
}
