# Catalogs and Templates

The Openslice Service Catalogue (accessible through the API or web portal) contains the representation of Service Specifications, either created from the provider defining service attributes, or by supporting the GSMA Generic Slice Templates (GST) as well as the VINNI Service Blueprint. The following scenarios are supported by the Openslice Service Catalogue.


## Create a Service Specification


## Generic Slice Templates (GST)
On October 16th 2019 GSMA published NG.116  Version 2.0 which defines the Generic Network Slice Template (GST). GST is a set of attributes that can characterise a type of network slice/service. GST is generic and is not tied to any specific network deployment. Here is a list of the various attributes of the template:
-	Availability
-	Area of Service
-	Delay tolerance
-	Deterministic communication
-	Downlink throughput per network slice
-	Downlink throughput per UE
-	Energy efficiency
-	Group communication support
-	Isolation level
-	Location based message delivery
-	Maximum supported packet size
-	Mission critical support
-	MMTel support
-	NB-IoT support
-	Network Slice Customer network functions
-	Number of connections
-	Number of terminals
-	Performance monitoring
-	Performance prediction
-	Positioning support
-	Radio spectrum
-	Reliability
-	Root cause investigation
-	Session and Service Continuity support 
-	Simultaneous use of the network slice
-	Slice quality of service parameters
-	Support for non-IP traffic 
-	Supported access technologies 
-	Supported device velocity 
-	Synchronicity
-	Terminal density 
-	Uplink throughput per network slice 
-	Uplink throughput per UE
-	User management openness
-	User data access 
-	V2X communication mode

Openslice offers the GST in a format that is machine readable and aligned with the TMF SID model. Here is a tentative approach in JSON : <https://github.com/openslice/io.openslice.tmf.api/blob/master/src/main/resources/gst.json>

Providers can clone a GST as e NEST directly in Openslice Web portal and the adjust the default attributes to their Service Specification


## 5G-VINNI Service Blueprint
5G-VINNI Service Blueprint is a special Service Specification defined by teh 5G-VINNI project. Many details can be found in document <https://zenodo.org/record/3345612>
5G-VINNI Service Blueprint is a reusable self-contained specification of required network slice service (instances). As described in GST mapping VINNI-SB is also machine readable. 
Here is a tentative approach in JSON : <https://github.com/openslice/io.openslice.tmf.api/tree/master/src/main/resources/vinnisb>
5G-VINNI SB has many commonalities with GST as well as it offers Testing as a Service attributes.
 Next figure presents the high-level object model of a 5G-VINNI service blueprint.
The 5G-VINNI SB as a first prototype approach is conceived as a CFS of a ‘bundle’ of services. It has some characteristics, like name, description, service type (eMBB, etc) and others. The constituent services are:
- A “Service Topology” Service Specification which is related to a Network Service Resource topology (a Logical Resource Spec). It is considered at this stage as an RFS but is subject to change in future
- A “VINNI SB Service Requirements” Service Specification which is related to Service requirements. This is very similar to GST. It is considered at this stage a CFS.
- A “VINNI SB Service Exposure Level 1” Service Specification which contains characteristics for service exposure on level 1 ( see D3.1 for details). It is considered at this stage a CFS.
- A “VINNI SB Service Exposure Level 2” Service Specification which contains characteristics for service exposure on level 2. It is considered at this stage a CFS.
- A “VINNI SB Service Exposure Level 3” Service Specification which contains characteristics for service exposure on level 3. It is considered at this stage a CFS.
- A “VINNI SB Service Exposure Level 4” Service Specification which contains characteristics for service exposure on level 4. It is considered at this stage a CFS.
- A “VINNI SB Service 3rd part VNF” Service Specification which contains characteristics for support 3rd party VNFs to be included in the service. It is considered at this stage as an RFS but is subject to change in future
- A “VINNI SB Service 3rd part NSD” Service Specification which contains characteristics for support 3rd party NSDs to be included in the service. It is considered at this stage as an RFS but is subject to change in future
- A “VINNI SB Service Monitoring” Service Specification which contains characteristics for offering Monitoring capabilities on the requested Service. It is considered at this stage a CFS.
- A “VINNI SB Service Testing” Service Specification which contains characteristics for offering Testing capabilities on the requested Service. It is considered at this stage a CFS.


[![VINNI SB Template Model diagram](../images/vinni_sb_model_diagram.png)](../images/vinni_sb_model_diagram.png)

## Manage a Service Specification


## Publish a Service Specification


## Retire/Remove a Service Specification


## Assign a Service Specification to Service Categories


## (TBD) Consume and expose Service Specifications from other Service Catalogues 
