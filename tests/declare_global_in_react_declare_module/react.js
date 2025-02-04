declare module 'react' {
  // $FlowExpectedError[undocumented-feature]
  declare global {
    declare namespace ReactTypes {
      type MyReact = 'react';
    }
    declare namespace ReactValue { // TODO error: error on ignored value defs in declare global
      declare const willBeIgnored: string;
    }
    type React$Node = 1; // bad-shadow
    type ReactGlobalType = 3;
    declare const willBeIgnored: string;
  }

  export type T1 = ReactTypes.MyReact;
  export type T2 = ReactGlobalType;
}
