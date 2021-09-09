# Luangwa Rift Active Fault Database (LRAFD)
Active fault database for the Luangwa Rift, Zambia compiled by Tess Turner, Luke Wedmore and Juliet Biggs at University of Bristol.

The active fault database is currently a work in progress but will be released in line with the Global Earthquake Model standards and form the basis of a publication that will shortly be submitted.




### Data Table
Attribute                                   | Data Type | Description                                                     | Notes
--------------------------------------------|-----------|-----------------------------------------------------------------|-----------------------------------
LRAFD_ID                                    | integer   | Unique Fault IDentification number assigned to each fault trace | 
Fault_Name                                  | string    | Name of fault                                                   | Assigned using local geographic features or towns
Dip_Direction                               | string    | Compass quadrant of fault dip direction                         | 
slip_type                                   | string    | kinematic type of fault                                         | e.g. normal, reverse, sinistral-strike slip, dextral-strike slip
Fault_Length                                | decimal   | Straight line distance between the tips of the fault            | 
GeomorphicExpression                        | string    | Geomorphic feature/features used to identify the fault trace and its extent | e.g. escarpment, fault scarp, offset sedimentary feature
Method                                      | string    | DEM or geologic dataset used to identify and map the fault trace | e.g. digital elevation model hillshade, slope map
Confidence                                  | integer   | Confidence of recent (Late-Quaternary) activity                 | Ranges from 1-4, 1 if high certainty, 4 if low certainty
ExposureQuality                             | integer   | Fault exposure quality                                          | 1 if high, 2 if low
EpistemicQuality                            | integer   | Certainty of whether a fault exists there                       | 1 if high, 2 if low
Accuracy                                    | integer   | Coarsest scale at which fault trace can be mapped, expressed as the denominator of the map scale | reflects the prominence of the fault's geomorphic expression
GeologicalMapExpression                     | string    | extent of correlation between fault traces and legacy geological map | whether faults have been previously mapped and/or follow geological contacts
Notes                                       | string    | Any additinoal or relevant information regarding the fault      | 
References                                  | string    | Relevant literature/geological maps where the fault is mentioned/described | 

