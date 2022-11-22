//
//  GuideDetailTest.swift
//  BowdensOwn
//
//  Created by Zach Uptin on 20/11/2022.
//

import AVKit
import SwiftUI

struct GuideDetailTest: View {
    let guide = Guide(id: UUID(), name: "Your new car detailing guide.", caption: "So you’ve just bought a new car and you want to look after it using the Bowden’s Own range of products. This article will take an in-depth look at all aspects of cleaning and maintaining your new car.", displayImage: "newcarguide", paragraph:
                        [GuideStep(title: "Clean your wheels first", paragraph: ["Always do any car washing in the shade, with the paint cool to the touch for best results. Not doing this can cause the water and the wash suds to evaporate faster than you'd like, possibly leading to water spots on the glass and paint!", "We like to start by cleaning our wheels first, as they are generally the dirtiest part of the car, and the grime off them is not what you want going onto your freshly washed car. Also, it's more time efficient to wash afterwards, so you don't have the rinse water sitting on your cars panels for a longer period after washing.", "We've always liked using pressure washers to help detail our cars, and they help a lot with wheel cleaning. If you don’t have a pressure washer, and you’re using a hose, or your wheels needed some extra cleaning after the pressure washer, grab the dedicated Wheels bucket (place a Great Barrier Thingy in it if you like). Add half a capful of any of our car washes and then fill it to the desired level and suds it up using the hose or pressure washer. Get the bucket situated next to the first wheel you are going to clean.", "For wheel face and under guard cleaning we always use the Big Black One and Little Chubby brushes with a capful of Wax Wash or Nanolicious Wash in the dedicated Wheels Bucket. It's great to use in conjunction with our Wheely Clean and Orange Agent, to help get a totally perfect, no fuss clean. Grab the bottle of Wheely Clean and spray 6-8 sprays all around the surface of the wheel and allow 30 seconds to 1 minute for the product to turn purple as it reacts with the brake dust on your wheels. Then, dip your brush in the bucket and take the rich wash mixture to the wheels or inner guards. The bristle density means the brushes will suck up and transfer heaps of suds, for an even more fantastic clean. After running the brush over the area, bring it back to the bucket and thrash it about, before going again on the next section you need to clean. For smaller areas (like around wheel nuts) use our Nuts & Guts brush. For a complete clean, our Flat Head Brush is purpose built for inner wheel barrel cleaning of most open spoke wheels, with a tapered flat head for reaching tighter spaces with ease. Once finished, rinse the wheels off with a strong jet of water and then with all the brushes in the bucket you move onto your next wheel, till the job's all done.", "If you're cleaning really dirty or mud caked wheels, it's recomended to use a two bucket method with both the Wheels Bucket and a separate Rinse Bucket as well, rinsing the grit and grime from the brushes in the Rinse Bucket before putting them back into the Wheels wash mix. This really helps keep your wash water clean and grit free as you do all four wheel arches and wheels. Be sure to wash and wipe out the Rinse Bucket if you'll be later using it with the Wash Bucket on your cars paint.", "Once you're done, rinse the brushes out in fresh water and hang them by the hooks on the handle ends with the bristles facing outwards, or place them in the Wheels Bucket with the brushes facing outwards or upwards, to not disfigure them. If they do ever get a bit mashed down or up by mistake, just run hot water over the bristles with them facing downwards to help regain their shape."], video: "https://bit.ly/swswift"),
                         GuideStep(title: "Scrub your tyres", paragraph: ["Often when you bring your new car home, it will have some really thick and nasty looking tyre shine product on it. We want to remove that and put on some of our no fling Tyre Sheen, to get those tyres looking like brand new again. We do this using our Orange Agent all purpose cleaner. Spray Orange Agent directly onto the tyre and then scrub them with the Little Chubby brush. When you're finished, pressure wash or rinse them off thoroughly."], video: "https://bit.ly/swswift"),
                         GuideStep(title: "The Snow Job clean", paragraph: ["If you have a pressure washer and our Snow Blow Cannon, follow the steps below. If you do not have a pressure washer, scroll down to the hand washing steps.", "The first thing we do is snow foam the vehicle with a strip wash solution using Orange Agent and Snow Job. This creates a thick, luscious foam over the entire vehicle that breaks down dirt, grime and loosens harder, baked on contaminants. It also removes any waxes or silicones on the paint, to ensure a clean surface for the following steps. NOTE: You DO NOT do this every time you Snow Job the car! You only do this maybe once or twice a year when you are doing a full cleanse, clay and seal. For regular Snow Jobs, use 900ml water and 100ml Snow Job solution.", "Set up your pressure washer directly in front of your car and connect the power and your hose/water to it. Don’t turn it on yet! We use a 9:1 ratio of water to foam wash and have made this super easy to work out.", "Simply fill the Cannon’s bottle to below the “Fill Water to Here” mark (that’s around 800ml of water), then measure and pour in 100ml of Orange Agent, then top it up with the Snow Job foam formula to the “Fill Snow Job to Here” mark (100ml of Snow Job). We put the Snow Job in last so it doesn’t foam up while you’re filling. If you're not using our Snow Blow Cannon, each capful of Snow Job is 50mls, so two capfuls is all you need to make up to one litre of Snow Job mixture.", "Attach the bottle to the Cannon’s screw in intake, being careful to not cross-thread it, then shake it well with your thumb over the adapter tip to stop it splashing out.", "Now attach the Cannon to the pressure washer, turn on the water, then power it up.", "For the thickest foam possible, turn the Cannon’s top blue air adjustment knob clockwise towards the “-” symbol. If you desire less foam or wish to use less foam solution, turn it the opposite way towards the “+” symbol.", "Squeeze the trigger of your pressure washer till the foam starts coming out.", "Adjust the Cannon’s blue end nozzle to find your desired foam arc. We like it around half to two thirds of the way between full fan and powerful jet.", "Keep the Cannon about a metre away from the cars’ surface to cover it in a lovely, thick foam. Starting on the lower sections and rear of the car, working your way around the car, from the bottom to the top, allowing the foam a longer dwell time on the dirtier, lower areas. Let the foam sit and do its work for 4 to 5 minutes, gently dissolving the grit and dirt from the surface. Do not let it dry.", "Remove the Snow Blow Cannon attachment and insert your pressure washer nozzle.", "Pressure wash the whole car starting from the top and working to the bottom, cleaning the very back of the car last so the foam has the longest dwell time on it.", "Don’t let the jet of water get too close to window and door rubber seals or other delicate parts like fabric tops, or emblems on the car. A distance of 30cm to 50cm away is always recommended so no damage can occur from the water jet.", "Once the foam is completely washed off, use your best judgement on whether it now needs a hand wash or not. If it does, you can follow the steps below - if it doesn’t, you can go on to drying."], video: "https://bit.ly/swswift")])

    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(guide.paragraph, id: \.self) { step in
                    VStack(alignment: .leading) {
                        Text(step.title)
                            .font(.title).bold()
                            
                            ForEach(step.paragraph, id: \.self) { paragraph in
                                    Text(paragraph)
                                        .font(.body)
                                
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .multilineTextAlignment(.leading)
                            .background(Color(.systemTeal).opacity(0.3))
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 20, style: .continuous))
                        
                        VideoPlayer(player: AVPlayer(url: URL(string: "https://bit.ly/swswift")!))
                            .frame(height: 400)
                            .cornerRadius(10)

                    }
                    .padding()
                }
            }
            .navigationTitle(guide.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct GuideDetailTest_Previews: PreviewProvider {
    static var previews: some View {
        GuideDetailTest()
    }
}
