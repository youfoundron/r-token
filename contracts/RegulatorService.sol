pragma solidity ^0.4.18;

/// @notice Standard interface for `RegulatorService`s
contract RegulatorService {

  /*
   * @notice This method *MUST* be called by `RegulatedToken`s during `transfer()` and `transferFrom()`.
   *         The implementation *SHOULD* check whether or not a transfer can be approved.
   *
   * @dev    This method *MAY* call back to the token contract specified by `_token` for
   *         more information needed to enforce trade approval.
   *
   * @param  _token The address of the token to be transfered
   * @param  _from The address of the sender account
   * @param  _from The address of the receiver account
   * @param  _amount The quantity of the token to trade
   *
   * @return (success, reason) `success` is `true` if the trade should be approved and  `false` if the trade
   *         should not be approved.  `reason` is the reason code as to why the trade failed if `success` is
   *         `false`.
   */
  function check(address _token, address _from, address _to, uint256 _amount) constant public returns (uint8);
}
