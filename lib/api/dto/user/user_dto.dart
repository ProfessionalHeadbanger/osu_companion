import 'package:json_annotation/json_annotation.dart';
import 'package:osu_companion/api/dto/user/user_account_history_dto.dart';
import 'package:osu_companion/api/dto/user/user_achievement_dto.dart';
import 'package:osu_companion/api/dto/user/user_badge_dto.dart';
import 'package:osu_companion/api/dto/user/user_current_season_stats_dto.dart';
import 'package:osu_companion/api/dto/user/user_daily_challenge_stats_dto.dart';
import 'package:osu_companion/api/dto/user/user_kudosu_dto.dart';
import 'package:osu_companion/api/dto/user/user_monthly_playcount_dto.dart';
import 'package:osu_companion/api/dto/user/user_page_dto.dart';
import 'package:osu_companion/api/dto/user/user_preferences_dto.dart';
import 'package:osu_companion/api/dto/user/user_profilebanner_dto.dart';
import 'package:osu_companion/api/dto/user/user_rank_highest_dto.dart';
import 'package:osu_companion/api/dto/user/user_rank_history_dto.dart';
import 'package:osu_companion/api/dto/user_group/user_group_dto.dart';
import 'package:osu_companion/api/dto/user_statistics/user_statistics_dto.dart';

part 'user_dto.g.dart';

@JsonSerializable(createToJson: false)
class UserDto {
  //required
  @JsonKey(name: 'avatar_url')
  final String avatarUrl;

  @JsonKey(name: 'country_code')
  final String countryCode;

  @JsonKey(name: 'default_group')
  final String? defaultGroup;

  final int id;

  @JsonKey(name: 'is_active')
  final bool isActive;

  @JsonKey(name: 'is_bot')
  final bool isBot;

  @JsonKey(name: 'is_deleted')
  final bool isDeleted;

  @JsonKey(name: 'is_online')
  final bool isOnline;

  @JsonKey(name: 'is_supporter')
  final bool isSupporter;

  @JsonKey(name: 'last_visit')
  final DateTime? lastVisit;

  @JsonKey(name: 'pm_friends_only')
  final bool pmFriendsOnly;

  @JsonKey(name: 'profile_colour')
  final String? profileColor;

  final String username;

  //optional
  @JsonKey(name: 'account_history')
  final List<UserAccountHistoryDto>? accountHistory;

  @JsonKey(name: 'active_tournament_banners')
  final List<UserProfilebannerDto>? activeTournamentBanners;

  final List<UserBadgeDto>? badges;

  @JsonKey(name: 'beatmap_playcounts_count')
  final int? beatmapPlaycountsCount;

  @JsonKey(name: 'country.name')
  final String? countryName;

  @JsonKey(name: 'cover.url')
  final String? coverUrl;

  @JsonKey(name: 'favourite_beatmapset_count')
  final int? favouriteBeatmapsetCount;

  @JsonKey(name: 'follow_user_mapping')
  final List<int>? followUserMapping;

  @JsonKey(name: 'follower_count')
  final int? followerCount;

  @JsonKey(name: 'graveyard_beatmapset_count')
  final int? graveyardBeatmapsetCount;

  final List<UserGroupDto>? groups;

  @JsonKey(name: 'guest_beatmapset_count')
  final int? guestBeatmapsetCount;

  @JsonKey(name: 'is_restricted')
  final bool? isRestricted;

  final UserKudosuDto? kudosu;

  @JsonKey(name: 'loved_beatmapset_count')
  final int? lovedBeatmapsetCount;

  @JsonKey(name: 'mapping_follower_count')
  final int? mappingFollowerCount;

  @JsonKey(name: 'monthly_playcounts')
  final List<UserMonthlyPlaycountDto>? monthlyPlaycounts;

  @JsonKey(name: 'nominated_beatmapset_count')
  final int? nominatedBeatmapsetCount;

  final List<UserPageDto>? pages;

  @JsonKey(name: 'pending_beatmapset_count')
  final int? pendingBeatmapsetCount;

  @JsonKey(name: 'previous_usernames')
  final List<String>? previousUsernames;

  @JsonKey(name: 'rank_history')
  final UserRankHistoryDto? rankHistory;

  @JsonKey(name: 'ranked_beatmapset_count')
  final int? rankedBeatmapsetCount;

  @JsonKey(name: 'replays_watched_counts')
  final List<int>? replaysWatchedCounts;

  @JsonKey(name: 'scores_best_count')
  final int? scoresBestCount;

  @JsonKey(name: 'scores_first_count')
  final int? scoresFirstCount;

  @JsonKey(name: 'scores_recent_count')
  final int? scoresRecentCount;

  @JsonKey(name: 'session_verified')
  final bool? sessionVerified;

  @JsonKey(name: 'statistics')
  final UserStatisticsDto? statistics;

  @JsonKey(name: 'support_level')
  final int? supportLevel;

  @JsonKey(name: 'unread_pm_count')
  final int? unreadPmCount;

  @JsonKey(name: 'user_achievements')
  final List<UserAchievementDto>? userAchievements;

  @JsonKey(name: 'user_preferences')
  final UserPreferencesDto? userPreferences;

  final String? discord;

  @JsonKey(name: 'has_supported')
  final bool? hasSupported;

  final String? interests;

  @JsonKey(name: 'join_date')
  final DateTime? joinDate;

  final String? location;

  @JsonKey(name: 'max_blocks')
  final int? maxBlocks;

  @JsonKey(name: 'max_friends')
  final int? maxFriends;

  final String? occupation;

  final String? playmode;

  final List<String>? playstyle;

  @JsonKey(name: 'post_count')
  final int? postCount;

  @JsonKey(name: 'profile_hue')
  final int? profileHue;

  @JsonKey(name: 'profile_order')
  final List<String>? profileOrder;

  final String? title;

  @JsonKey(name: 'title_url')
  final String? titleUrl;

  final String? twitter;

  final String? website;

  @JsonKey(name: 'cover.custom_url')
  final String? coverCustomUrl;

  @JsonKey(name: 'comments_count')
  final int? commentsCount;

  @JsonKey(name: 'current_season_stats')
  final UserCurrentSeasonStatsDto? currentSeasonStats;

  @JsonKey(name: 'daily_challenge_user_stats')
  final UserDailyChallengeStatsDto? dailyChallengeUserStats;

  @JsonKey(name: 'page')
  final UserPageDto? pageSingle; // чтобы отличать от списка page(s)

  @JsonKey(name: 'rank_highest')
  final UserRankHighestDto? rankHighest;

  @JsonKey(name: 'scores_pinned_count')
  final int? scoresPinnedCount;

  @JsonKey(name: 'ranked_and_approved_beatmapset_count')
  final int? rankedAndApprovedBeatmapsetCount;

  @JsonKey(name: 'unranked_beatmapset_count')
  final int? unrankedBeatmapsetCount;

  UserDto({
    required this.avatarUrl,
    required this.countryCode,
    required this.defaultGroup,
    required this.id,
    required this.isActive,
    required this.isBot,
    required this.isDeleted,
    required this.isOnline,
    required this.isSupporter,
    required this.lastVisit,
    required this.pmFriendsOnly,
    required this.profileColor,
    required this.username,
    this.accountHistory,
    this.activeTournamentBanners,
    this.badges,
    this.beatmapPlaycountsCount,
    this.countryName,
    this.coverUrl,
    this.favouriteBeatmapsetCount,
    this.followUserMapping,
    this.followerCount,
    this.graveyardBeatmapsetCount,
    this.groups,
    this.guestBeatmapsetCount,
    this.isRestricted,
    this.kudosu,
    this.lovedBeatmapsetCount,
    this.mappingFollowerCount,
    this.monthlyPlaycounts,
    this.nominatedBeatmapsetCount,
    this.pages,
    this.pendingBeatmapsetCount,
    this.previousUsernames,
    this.rankHistory,
    this.rankedBeatmapsetCount,
    this.replaysWatchedCounts,
    this.scoresBestCount,
    this.scoresFirstCount,
    this.scoresRecentCount,
    this.sessionVerified,
    this.statistics,
    this.supportLevel,
    this.unreadPmCount,
    this.userAchievements,
    this.userPreferences,
    this.discord,
    this.hasSupported,
    this.interests,
    this.joinDate,
    this.location,
    this.maxBlocks,
    this.maxFriends,
    this.occupation,
    this.playmode,
    this.playstyle,
    this.postCount,
    this.profileHue,
    this.profileOrder,
    this.title,
    this.titleUrl,
    this.twitter,
    this.website,
    this.coverCustomUrl,
    this.commentsCount,
    this.currentSeasonStats,
    this.dailyChallengeUserStats,
    this.pageSingle,
    this.rankHighest,
    this.scoresPinnedCount,
    this.rankedAndApprovedBeatmapsetCount,
    this.unrankedBeatmapsetCount,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) => _$UserDtoFromJson(json);
}
