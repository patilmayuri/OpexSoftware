litc-nodejs Cookbook
===========================
This cookbook installs Node.js on Windows systems.
Default version: 4.2.2 for 32 bit and 64 bit

Platforms
--------
* Windows 7
* Windows 8
* Windows 8.1
* Windows 10
* Windows Server 2008R2
* Windows Server 2012

Attributes
==================
| Key | Type | Description | Default |
| --- | ---- | ----------- | ------- |
| ['litc-nodejs']['version'] | String | Version of the installer | "4.2.2"|
| ['litc-nodejs']['source'] | String | URL to the installer archive to download | "https://nodejs.org/dist/v4.2.6/node-v4.2.6-x86.msi" |

Sources
==================
A list of available sources can be found at:
[![https://nodejs.org/dist/v4.2.6/node-v4.2.6-x86.msi/]


Usage
==================
#### litc-nodejs::default

Just include `litc-nodejs` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[litc-nodejs]"
  ]
}
```
