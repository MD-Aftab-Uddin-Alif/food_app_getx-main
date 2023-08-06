import 'package:flutter/material.dart';
import 'package:food_app_getx/util/colors.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
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
          const SliverToBoxAdapter(
            child: Text(
                'The EASSy project offers a solution to infrastructural Internet access problems in Eastern Africa. It responds to a critical need for an effective and affordable Internet connection in a large region of Africa. The EASSy project intervenes in a sub-developed market. There are few direct high-capacity Internet links between and within African countries, and high-capacity transmission lines are mainly concentrated in the US, Europe and Asia. As a result, about 75% of Internet traffic in Africa first goes through Europe or the US, and is then routed back, a very costly process. For example, while Benin and Burkina Faso are neighbors, Internet traffic between them passes through France or Canada. The International Development Research Centre (IDRC) in Canada estimates that Africa spends at least 400 million each year on the use of international bandwidth for national or regional data. In fact, in many cases, e-mails sent between two Internet service providers in the same country are sent abroad and then rerouted back because domestic Internet Exchange Points (IXP) are lacking. Africa is currently dependent on the SAT-3 cable, and on expensive satellite links, the only option in some Eastern African countries. These satellite connections have inherent delays and do not offer competitive pricing conditions. The slow pace of Internet development on the continent is reflected in low levels of use. Low-speed transmission lines also mean that Internet users in Africa find it much faster and cheaper to download material rather than to post their own onto the Internet. These conditions consign Africans to serve primarily as consumers instead of producers of web content.The EASSy project offers a solution to infrastructural Internet access problems in Eastern Africa. It responds to a critical need for an effective and affordable Internet connection in a large region of Africa. The EASSy project intervenes in a sub-developed market. There are few direct high-capacity Internet links between and within African countries, and high-capacity transmission lines are mainly concentrated in the US, Europe and Asia. As a result, about 75% of Internet traffic in Africa first goes through Europe or the US, and is then routed back, a very costly process. For example, while Benin and Burkina Faso are neighbors, Internet traffic between them passes through France or Canada. The International Development Research Centre (IDRC) in Canada estimates that Africa spends at least 400 million each year on the use of international bandwidth for national or regional data. In fact, in many cases, e-mails sent between two Internet service providers in the same country are sent abroad and then rerouted back because domestic Internet Exchange Points (IXP) are lacking. Africa is currently dependent on the SAT-3 cable, and on expensive satellite links, the only option in some Eastern African countries. These satellite connections have inherent delays and do not offer competitive pricing conditions. The slow pace of Internet development on the continent is reflected in low levels of use. Low-speed transmission lines also mean that Internet users in Africa find it much faster and cheaper to download material rather than to post their own onto the Internet. These conditions consign Africans to serve primarily as consumers instead of producers of web content.'),
          ),
        ],
      ),
    );
  }
}
