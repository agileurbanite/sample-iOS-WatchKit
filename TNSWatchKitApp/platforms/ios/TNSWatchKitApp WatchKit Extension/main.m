//
//  main.m
//  TNSBridgeApp
//
//  Created by Yavor Georgiev on 07.03.14.
//  Copyright (c) 2014 г. Telerik. All rights reserved.
//

#include <NativeScript/NativeScript.h>

static TNSRuntime* runtime;

int main() {
    runtime = [[TNSRuntime alloc] initWithApplicationPath:[NSBundle mainBundle].bundlePath];
    TNSRuntimeInspector.logsToSystemConsole = YES;
    [runtime executeModule:@"./"];
    return 0;
}
