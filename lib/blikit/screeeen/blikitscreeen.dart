import 'package:flutter/material.dart';

import '../widgets/buildAppBar.dart';

class Blikitscreeen extends StatefulWidget {
  const Blikitscreeen({super.key});

  @override
  State<Blikitscreeen> createState() => _BlikitscreeenState();
}

class _BlikitscreeenState extends State<Blikitscreeen> {
  final _formKey = GlobalKey<FormState>();
  final List<Map<String, dynamic>> _categories = [
    {'name': 'All', 'icon': Icons.grid_view_rounded},
    {'name': 'Summer', 'icon': Icons.wb_sunny_outlined},
    {'name': 'Electronics', 'icon': Icons.headphones_outlined},
    {'name': 'Beauty', 'icon': Icons.face_outlined},
    {'name': 'Kids', 'icon': Icons.child_care_outlined},
  ];
// Welcome section data for each category
  final Map<String, Map<String, String>> _welcomeData = {
    'All': {
      'title': 'Welcome',
      'subtitle': 'Order now to avail exciting offers!',
    },
    'Summer': {
      'title': 'Summer Specials',
      'subtitle': 'Beat the heat with our summer collection!',
    },
    'Electronics': {
      'title': 'Tech Deals',
      'subtitle': 'Discover the latest gadgets and accessories!',
    },
    'Beauty': {
      'title': 'Beauty Essentials',
      'subtitle': 'Pamper yourself with premium beauty products!',
    },
    'Kids': {
      'title': 'Kids Corner',
      'subtitle': 'Everything your little ones need!',
    },
  };

  // Offers section data for each category
  final Map<String, List<Map<String, dynamic>>> _offersData = {
    'All': [
      {
        'icon': Icons.currency_rupee,
        'title': 'Flat ₹50 OFF',
        'subtitle': 'on your first order',
        'footer': 'above ₹299',
        'color': Color(0xFF4CAF50),
      },
      {
        'icon': Icons.delivery_dining,
        'title': 'Free Delivery',
        'subtitle': 'on first 10 orders',
        'color': Color(0xFF4CAF50),
      },
    ],
    'Summer': [
      {
        'icon': Icons.ac_unit,
        'title': 'Flat 20% OFF',
        'subtitle': 'on summer drinks',
        'footer': 'above ₹199',
        'color': Color(0xFF2196F3),
      },
      {
        'icon': Icons.wb_sunny_outlined,
        'title': 'Summer Bundle',
        'subtitle': 'get 3 items at price of 2',
        'color': Color(0xFF2196F3),
      },
    ],
    'Electronics': [
      {
        'icon': Icons.headphones,
        'title': 'Upto 30% OFF',
        'subtitle': 'on premium headphones',
        'footer': 'limited time offer',
        'color': Color(0xFF9C27B0),
      },
      {
        'icon': Icons.phone_android,
        'title': 'Exchange Bonus',
        'subtitle': 'extra ₹2000 on old device',
        'color': Color(0xFF9C27B0),
      },
    ],
    'Beauty': [
      {
        'icon': Icons.face,
        'title': 'Buy 1 Get 1',
        'subtitle': 'on selected skincare',
        'footer': 'limited period',
        'color': Color(0xFFE91E63),
      },
      {
        'icon': Icons.spa,
        'title': 'Gift Hamper',
        'subtitle': 'on orders above ₹999',
        'color': Color(0xFFE91E63),
      },
    ],
    'Kids': [
      {
        'icon': Icons.child_care,
        'title': '40% OFF',
        'subtitle': 'on kids clothing',
        'footer': 'this weekend only',
        'color': Color(0xFFFF9800),
      },
      {
        'icon': Icons.toys,
        'title': 'Toy Festival',
        'subtitle': 'buy 2 get 1 free',
        'color': Color(0xFFFF9800),
      },
    ],
  };

  final List<Map<String, dynamic>> _bestsellers = [
    {
      'title': 'Dairy, Bread & Eggs',
      'items': ['milk.png', 'bread.png', 'eggs.png', 'cheese.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+98 more',
      'category': 'All',
    },
    {
      'title': 'Vegetables & Fruits',
      'items': ['tomato.png', 'apple.png', 'onion.png', 'spinach.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+98 more',
      'category': 'All',
    },
    {
      'title': 'Oil, Ghee & Masala',
      'items': ['oil.png', 'ghee.png', 'masala1.png', 'masala2.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+115 more',
      'category': 'All',
    },
    {
      'title': 'Summer Essentials',
      'items': ['sunscreen.png', 'hat.png', 'sunglasses.png', 'fan.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+45 more',
      'category': 'Summer',
    },
    {
      'title': 'Summer Drinks',
      'items': ['lemonade.png', 'icetea.png', 'coconutwater.png', 'juice.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+32 more',
      'category': 'Summer',
    },
    {
      'title': 'Smartphones',
      'items': ['phone1.png', 'phone2.png', 'phone3.png', 'phone4.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+25 more',
      'category': 'Electronics',
    },
    {
      'title': 'Headphones & Speakers',
      'items': ['headphone.png', 'speaker.png', 'earbuds.png', 'neckband.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+30 more',
      'category': 'Electronics',
    },
    {
      'title': 'Skincare',
      'items': [
        'facewash.png',
        'moisturizer.png',
        'serum.png',
        'sunscreen.png',
      ],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+65 more',
      'category': 'Beauty',
    },
    {
      'title': 'Makeup',
      'items': [
        'lipstick.png',
        'foundation.png',
        'mascara.png',
        'eyeshadow.png',
      ],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+78 more',
      'category': 'Beauty',
    },
    {
      'title': 'Kids Clothing',
      'items': ['tshirt.png', 'shorts.png', 'dress.png', 'shoes.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+55 more',
      'category': 'Kids',
    },
    {
      'title': 'Kids Toys',
      'items': ['toy1.png', 'toy2.png', 'toy3.png', 'toy4.png'],
      'images': [
        'assets/uiImages/c4.png',
        'assets/uiImages/image 35.png',
        'assets/uiImages/image 23.png',
        'assets/uiImages/image 36.png',
      ],
      'more': '+40 more',
      'category': 'Kids',
    },
  ];

  int _selectedCategoryIndex = 0;

  List<Map<String, dynamic>> get filteredBestsellers {
    final selectedCategory = _categories[_selectedCategoryIndex]['name'];
    if (selectedCategory == 'All') {
      return _bestsellers.where((item) => item['category'] == 'All').toList();
    } else {
      return _bestsellers
          .where((item) => item['category'] == selectedCategory)
          .toList();
    }
  }

  String get selectedCategoryName {
    return _categories[_selectedCategoryIndex]['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: _buildAppBar(),
        ),
        SliverPersistentHeader(
            pinned: true,
            delegate: _SliverAppBarDelegate(
              minHeight: 60,
              maxHeight: 60,
              child: Container(
                color: const Color(0xFFFFC300),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: _buildSearchBar(),
              ),
            )),
        // Categories (Sticky)
        SliverPersistentHeader(
          pinned: true,
          delegate: _SliverAppBarDelegate(
            minHeight: 70,
            maxHeight: 70,
            child: Container(
              color: Colors.white,
              child: _buildCategories(),
            ),
          ),
        ),

        // Welcome Section
        SliverToBoxAdapter(child: _buildWelcomeSection()),
        SliverToBoxAdapter(child: _buildOffersSection()),
      ]),
    );
  }

  Widget _buildBestsellersSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Bestsellers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 16),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: filteredBestsellers.length,
            itemBuilder: (context, index) {
              return _buildBestsellerCategory(filteredBestsellers[index]);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildBestsellerCategory(Map<String, dynamic> category) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            category['title'],
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: category['items'].length + 1,
            itemBuilder: (context, index) {
              if (index == category['items'].length) {
                return _buildMoreItem(category['more']);
              }
              return _buildProductItem(
                category['items'][index],
                category['images'][index],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductItem(String imageName, String images) {
    return Container(
      width: 80,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Image.asset(
                images,
                width: 60,
                height: 60,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(
                    Icons.image,
                    size: 40,
                    color: Colors.grey.shade400,
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            imageName.split('.').first,
            style: const TextStyle(fontSize: 12),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildOffersSection() {
    final category = selectedCategoryName;
    final offers = _offersData[category]!;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      color: const Color(0xFFFFC300),
      child: Row(
        children: [
          Expanded(
            child: _buildOfferCard(
              icon: offers[0]['icon'],
              title: offers[0]['title'],
              subtitle: offers[0]['subtitle'],
              footer: offers[0]['footer'],
              color: offers[0]['color'],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: const Icon(Icons.add, color: Colors.black54),
          ),
          Expanded(
            child: _buildOfferCard(
              icon: offers[1]['icon'],
              title: offers[1]['title'],
              subtitle: offers[1]['subtitle'],
              footer: offers[1]['footer'],
              color: offers[1]['color'],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOfferCard({
    required IconData icon,
    required String title,
    required String subtitle,
    String? footer,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: color,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 10, color: Colors.black87),
                ),
                if (footer != null)
                  Text(
                    footer,
                    style: const TextStyle(fontSize: 10, color: Colors.black54),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeSection() {
    final category = selectedCategoryName;
    final welcomeInfo = _welcomeData[category]!;

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      color: const Color(0xFFFFC300),
      child: Column(
        children: [
          Text(
            welcomeInfo['title']!,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Serif',
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 4),
          Text(welcomeInfo['subtitle']!, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: const Color(0xFFFFC300),
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          _categories.length,
          (index) => _buildCategoryItem(index),
        ),
      ),
    );
  }

  Widget _buildCategoryItem(int index) {
    final bool isSelected = _selectedCategoryIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedCategoryIndex = index;
        });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.grey.shade100,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              _categories[index]['icon'],
              color: isSelected ? Colors.white : Colors.black,
              size: 20,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            _categories[index]['name'],
            style: TextStyle(
              fontSize: 12,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: 44,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Icon(Icons.search, color: const Color.fromARGB(255, 0, 0, 0)),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search "${selectedCategoryName.toLowerCase()}"',
                hintStyle: TextStyle(color: Colors.grey.shade500),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
          const SizedBox(width: 8),
          Icon(Icons.mic, color: const Color.fromARGB(255, 0, 0, 0)),
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: const Color(0xFFFFC300),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Blinkit in',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        '8 minutes',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: const [
                              Icon(Icons.info_outline, size: 12),
                              SizedBox(width: 2),
                              Text('Know more', style: TextStyle(fontSize: 10)),
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: const [
                      Text(
                        'Vikas Khand, Gomti Nagar',
                        style: TextStyle(fontSize: 14),
                      ),
                      Icon(Icons.keyboard_arrow_down, size: 16),
                    ],
                  ),
                ],
              ),
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18,
                child: Icon(Icons.person, color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildMoreItem(String text) {
    return Container(
      width: 80,
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
