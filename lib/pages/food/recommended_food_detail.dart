import 'package:flutter/material.dart';
import 'package:food_app_getx/util/colors.dart';
import 'package:food_app_getx/util/dimensions.dart';
import 'package:food_app_getx/widgets/app_icon.dart';
import 'package:food_app_getx/widgets/big_text.dart';
import 'package:food_app_getx/widgets/exandable_text_widget.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
                child: Center(
                  child: BigText(size: Dimensions.font26, text: 'Chinese Side'),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/logo/burger.jpeg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: Dimensions.width20, right: Dimensions.width20),
                  child: const ExpandableTextWidget(
                      text:
                          'The EASSy project offers a solution to infrastructural Internet access problems in Eastern Africa. It responds to a critical need for an effective and affordable Internet connection in a large region of Africa. The EASSy project intervenes in a sub-developed market. There are few direct high-capacity Internet links between and within African countries, and high-capacity transmission lines are mainly concentrated in the US, Europe and Asia. As a result, about 75% of Internet traffic in Africa first goes through Europe or the US, and is then routed back, a very costly process. For example, while Benin and Burkina Faso are neighbors, Internet traffic between them passes through France or Canada. The International Development Research Centre (IDRC) in Canada estimates that Africa spends at least 400 million each year on the use of international bandwidth for national or regional data. In fact, in many cases, e-mails sent between two Internet service providers in the same country are sent abroad and then rerouted back because domestic Internet Exchange Points (IXP) are lacking. Africa is currently dependent on the SAT-3 cable, and on expensive satellite links, the only option in some Eastern African countries. These satellite connections have inherent delays and do not offer competitive pricing conditions. The slow pace of Internet development on the continent is reflected in low levels of use. Low-speed transmission lines also mean that Internet users in Africa find it much faster and cheaper to download material rather than to post their own onto the Internet. These conditions consign Africans to serve primarily as consumers instead of producers of web content.The EASSy project offers a solution to infrastructural Internet access problems in Eastern Africa. It responds to a critical need for an effective and affordable Internet connection in a large region of Africa. The EASSy project intervenes in a sub-developed market. There are few direct high-capacity Internet links between and within African countries, and high-capacity transmission lines are mainly concentrated in the US, Europe and Asia. As a result, about 75% of Internet traffic in Africa first goes through Europe or the US, and is then routed back, a very costly process. For example, while Benin and Burkina Faso are neighbors, Internet traffic between them passes through France or Canada. The International Development Research Centre (IDRC) in Canada estimates that Africa spends at least 400 million each year on the use of international bandwidth for national or regional data. In fact, in many cases, e-mails sent between two Internet service providers in the same country are sent abroad and then rerouted back because domestic Internet Exchange Points (IXP) are lacking. Africa is currently dependent on the SAT-3 cable, and on expensive satellite links, the only option in some Eastern African countries. These satellite connections have inherent delays and do not offer competitive pricing conditions. The slow pace of Internet development on the continent is reflected in low levels of use. Low-speed transmission lines also mean that Internet users in Africa find it much faster and cheaper to download material rather than to post their own onto the Internet. These conditions consign Africans to serve primarily as consumers instead of producers of web content.'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: '\$12.88  X  0',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: 120,
            padding: EdgeInsets.only(
                top: Dimensions.height30,
                bottom: Dimensions.height30,
                left: Dimensions.width20,
                right: Dimensions.width20),
            decoration: BoxDecoration(
              color: AppColors.buttenBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white,
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    )),
                Container(
                  padding: EdgeInsets.only(
                      top: Dimensions.height20,
                      bottom: Dimensions.height20,
                      left: Dimensions.width20,
                      right: Dimensions.width20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius20),
                    color: AppColors.mainColor,
                  ),
                  child: BigText(
                    text: '\$10 | Add tor cart',
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
