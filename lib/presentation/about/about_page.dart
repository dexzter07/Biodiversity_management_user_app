import 'package:wbbb_user/core/app_export.dart';
import 'package:wbbb_user/theme/custom_textstyle.dart';

class AboutWBBBPage extends StatelessWidget {
  const AboutWBBBPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundRegular,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            backgroundColor: AppColors.surfaceRegular,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
            title: Text("About WBBB", style: CustomTextStyle.titleMedium()),
            centerTitle: true,
            elevation: 0,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Protecting the biodiversity of the West Bengal",
                      style: CustomTextStyle.headlineLarge()),
                  const SizedBox(height: 8),
                  // Description
                  Text(
                    "Discover the Biodiversity Conservation Summit, a gathering dedicated to exploring innovative strategies for the preservation and protection of the rich ecosystems in West Bengal.",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 16),
                  // Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      "assets/images/image.png",
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Section: What we do
                  const SectionTitle(title: "What we do"),
                  Text(
                    "Discover the Biodiversity Conservation Summit, a gathering dedicated to exploring innovative strategies for the preservation and protection of the rich ecosystems in West Bengal.",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 16),
                  // Section: Our vision
                  const SectionTitle(title: "Our vision"),
                  Text(
                    "Discover the Biodiversity Conservation Summit, a gathering dedicated to exploring innovative strategies for the preservation and protection of the rich ecosystems in West Bengal.",
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  ),
                  const SizedBox(height: 16),
                  // Section: Our board
                  const SectionTitle(title: "Our board"),
                  const SizedBox(height: 8),
                  // Board Members
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(4, (index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Column(
                            children: [
                              const CircleAvatar(
                                radius: 40,
                                backgroundImage: NetworkImage(
                                  "https://via.placeholder.com/150",
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                [
                                  "John Doe",
                                  "Alice Smith",
                                  "Michael Johnson",
                                  "Olivia Brown"
                                ][index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 14),
                              ),
                              Text(
                                [
                                  "Secretary of State",
                                  "Minister of Finance",
                                  "Minister of Health",
                                  "Board Member"
                                ][index],
                                style: TextStyle(
                                    fontSize: 12, color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                  const SizedBox(height: 16),
                  // Footer
                  Divider(color: Colors.grey[300]),
                  const SizedBox(height: 16),
                  Center(
                    child: Image.asset(
                      "assets/logo/wbbb.png",
                      height: 80,
                      width: 80,
                    ),
                  ),
                  const SizedBox(height: 20),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "West Bengal Biodiversity Board",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Prani Sampad Bhawan, 5th Floor, LB - 2, Sector - III, Salt Lake City, Kolkata, West Bengal 700106, India",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title, style: CustomTextStyle.headlineSmall());
  }
}
