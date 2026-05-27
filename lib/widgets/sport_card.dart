import 'package:flutter/material.dart';
import '../utils/constants.dart';

class SportCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? imageUrl;
  final IconData? icon;
  final Widget? trailing;
  final VoidCallback? onTap;
  final List<String>? tags;
  final bool isFeatured;

  const SportCard({
    Key? key,
    required this.title,
    required this.subtitle,
    this.imageUrl,
    this.icon,
    this.trailing,
    this.onTap,
    this.tags,
    this.isFeatured = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(AppSpacing.sm),
        decoration: BoxDecoration(
          gradient: isFeatured ? AppColors.neonGradient : null,
          color: AppColors.surfaceDark,
          borderRadius: BorderRadius.circular(AppRadius.lg),
          border: Border.all(
            color: isFeatured ? AppColors.primary : AppColors.surface,
            width: isFeatured ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: isFeatured
                  ? AppColors.primary.withOpacity(0.3)
                  : AppColors.primary.withOpacity(0.1),
              blurRadius: isFeatured ? 20 : 10,
              spreadRadius: isFeatured ? 2 : 0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (imageUrl != null)
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(AppRadius.lg),
                    topRight: Radius.circular(AppRadius.lg),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(imageUrl!),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            else if (icon != null)
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: AppColors.neonGradient,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(AppRadius.lg),
                    topRight: Radius.circular(AppRadius.lg),
                  ),
                ),
                child: Icon(
                  icon,
                  size: 40,
                  color: AppColors.background,
                ),
              ),
            Padding(
              padding: const EdgeInsets.all(AppSpacing.md),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: AppTypography.heading3,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: AppSpacing.xs),
                            Text(
                              subtitle,
                              style: AppTypography.bodySmall,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      if (trailing != null) trailing!,
                    ],
                  ),
                  if (tags != null) ...[
                    const SizedBox(height: AppSpacing.md),
                    _buildTags()
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTags() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: tags!
            .map(
              (tag) => Container(
                margin: const EdgeInsets.only(right: AppSpacing.sm),
                padding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.sm,
                  vertical: AppSpacing.xs,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(AppRadius.sm),
                  border: Border.all(
                    color: AppColors.primary.withOpacity(0.5),
                  ),
                ),
                child: Text(
                  tag,
                  style: AppTypography.bodySmall.copyWith(
                    color: AppColors.primary,
                    fontSize: 10,
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
