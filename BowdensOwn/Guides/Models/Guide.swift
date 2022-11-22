//
//  Guide.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 19/11/2022.
//

import Foundation

struct Guide: Identifiable, Codable, Equatable {
    var id = UUID()
    var name: String
    var caption: String
    var displayImage: String
    var paragraph: [GuideStep]
    
    static let exampleGuide = Guide(id: UUID(),
                                    name: "Youre new car detailing guide.",
                                    caption: "So you’ve just bought a new car and you want to look after it using the Bowden’s Own range of products. This article will take an in-depth look at all aspects of cleaning and maintaining your new car.",
                                    displayImage: "newcarguide", paragraph:
                                        [GuideStep(title: "Clean your wheels first",
                                                   paragraph: [
                                                    "Always do any car washing in the shade, with the paint cool to the touch for best results. Not doing this can cause the water and the wash suds to evaporate faster than you'd like, possibly leading to water spots on the glass and paint!",
                                                    "We like to start by cleaning our wheels first, as they are generally the dirtiest part of the car, and the grime off them is not what you want going onto your freshly washed car. Also, it's more time efficient to wash afterwards, so you don't have the rinse water sitting on your cars panels for a longer period after washing.",
                                                    "We've always liked using pressure washers to help detail our cars, and they help a lot with wheel cleaning. If you don’t have a pressure washer, and you’re using a hose, or your wheels needed some extra cleaning after the pressure washer, grab the dedicated Wheels bucket (place a Great Barrier Thingy in it if you like). Add half a capful of any of our car washes and then fill it to the desired level and suds it up using the hose or pressure washer. Get the bucket situated next to the first wheel you are going to clean.",
                                                    "For wheel face and under guard cleaning we always use the Big Black One and Little Chubby brushes with a capful of Wax Wash or Nanolicious Wash in the dedicated Wheels Bucket. It's great to use in conjunction with our Wheely Clean and Orange Agent, to help get a totally perfect, no fuss clean. Grab the bottle of Wheely Clean and spray 6-8 sprays all around the surface of the wheel and allow 30 seconds to 1 minute for the product to turn purple as it reacts with the brake dust on your wheels. Then, dip your brush in the bucket and take the rich wash mixture to the wheels or inner guards. The bristle density means the brushes will suck up and transfer heaps of suds, for an even more fantastic clean. After running the brush over the area, bring it back to the bucket and thrash it about, before going again on the next section you need to clean. For smaller areas (like around wheel nuts) use our Nuts & Guts brush. For a complete clean, our Flat Head Brush is purpose built for inner wheel barrel cleaning of most open spoke wheels, with a tapered flat head for reaching tighter spaces with ease. Once finished, rinse the wheels off with a strong jet of water and then with all the brushes in the bucket you move onto your next wheel, till the job's all done.",
                                                    "If you're cleaning really dirty or mud caked wheels, it's recomended to use a two bucket method with both the Wheels Bucket and a separate Rinse Bucket as well, rinsing the grit and grime from the brushes in the Rinse Bucket before putting them back into the Wheels wash mix. This really helps keep your wash water clean and grit free as you do all four wheel arches and wheels. Be sure to wash and wipe out the Rinse Bucket if you'll be later using it with the Wash Bucket on your cars paint.",
                                                    "Once you're done, rinse the brushes out in fresh water and hang them by the hooks on the handle ends with the bristles facing outwards, or place them in the Wheels Bucket with the brushes facing outwards or upwards, to not disfigure them. If they do ever get a bit mashed down or up by mistake, just run hot water over the bristles with them facing downwards to help regain their shape."
                                                   ],
                                                   video: "https://youtu.be/571rkMymBn0")
                                        ]
    )
}
