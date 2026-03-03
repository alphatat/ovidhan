import 'package:flutter/material.dart';

class SearchCapsule extends StatefulWidget {
  final ValueChanged<String> onSearch;
  final VoidCallback? onSettingsTap;

  const SearchCapsule({super.key, required this.onSearch, this.onSettingsTap});

  @override
  State<SearchCapsule> createState() => _SearchCapsuleState();
}

class _SearchCapsuleState extends State<SearchCapsule>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _scaleAnimation;
  final _focusNode = FocusNode();
  bool _isExpanded = false;
  final TextEditingController _textControler = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _scaleAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    return Container(
      height: 56,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: isDark ? Colors.grey[850] : Colors.grey.shade100,
        borderRadius: BorderRadius.circular(28),
        border: Border.all(
          color: _isExpanded
              ? theme.colorScheme.primary
              : (isDark ? Colors.grey[700]! : Colors.grey[300]!),
          width: _isExpanded ? 2 : 1,
        ),
        boxShadow: _isExpanded
            ? [
                BoxShadow(
                  color: theme.colorScheme.primary.withAlpha(60),
                  blurRadius: 8,
                ),
              ]
            : null,
      ),
      child: Row(
        children: [
          Expanded(
            child: AnimatedContainer(
              duration: const Duration(microseconds: 200),
              margin: EdgeInsets.only(left: _isExpanded ? 12 : 16),
              child: TextField(
                controller: _textControler,
                focusNode: _focusNode,
                decoration: const InputDecoration(
                  hintText: "¿গো + এষণা?",
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                onChanged: widget.onSearch,
                onTap: () {
                  if (!_isExpanded) {
                    setState(() => _isExpanded = true);
                    _controller.forward();
                  }
                },
                onSubmitted: (value) => _focusNode.unfocus(),
              ),
            ),
          ),

          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_isExpanded)
                IconButton(
                  onPressed: () {
                    widget.onSearch('অ');
                    _textControler.clear();
                    _focusNode.requestFocus();
                  },
                  icon: Icon(
                    Icons.clear,
                    color: theme.colorScheme.inversePrimary,
                    size: 20,
                  ),
                ),

              IconButton(
                onPressed: () {
                  if (_isExpanded) {
                    widget.onSearch(
                      _focusNode.context?.findRenderObject() != null
                          ? (_focusNode.context as Element).widget.toString()
                          : '',
                    );
                    _focusNode.unfocus();
                    setState(() => _isExpanded = false);
                    _controller.reverse();
                  } else {
                    widget.onSettingsTap?.call();
                  }
                },
                icon: Icon(_isExpanded ? Icons.search : Icons.tune, size: 20),
              ),

              const SizedBox(width: 8),
            ],
          ),
        ],
      ),
    );
  }
}
