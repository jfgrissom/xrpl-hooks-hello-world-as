// The entry file of your WebAssembly module.

import {
  _g as GUARD,
  trace as TRACE,
  accept as ACCEPT
} from '../node_modules/xrpl-hooks-api-assembly-script/dist'

export function cbak(reserved: i64): i64 {
  return reserved
}

export function hook(reserved: i64): i64 {
  // Setup a trace to make this easier to find in the logs.
  const startingMessage = 'Hello World'
  TRACE('', 0, startingMessage, startingMessage.length * 2, 0)

  // Accept the call to this hook.
  const acceptMessage = 'Accepted Hook Call: Hello World'
  ACCEPT(acceptMessage, acceptMessage.length * 2, 200)
  GUARD(1, 1)
  return reserved
}
