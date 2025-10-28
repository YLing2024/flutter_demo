import 'package:logger/logger.dart';

final logger = Logger(
    level: Level.all, //可以配置屏蔽某些level的日志，开发环境调试用，不需要提交，Logger在生产环境会自动禁用
    printer: PrefixPrinter(
      PrettyPrinter(
          methodCount: 1,
          errorMethodCount: 10,
          dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
          levelColors: {
            Level.trace: AnsiColor.fg(8), // 灰色
            Level.debug: AnsiColor.fg(34), // 青蓝
            Level.info: AnsiColor.fg(39), // 天蓝
            Level.warning: AnsiColor.fg(220), // 黄色
            Level.error: AnsiColor.fg(160), // 暗红
            Level.fatal: AnsiColor.fg(125), // 紫红
          },
          levelEmojis: {
            Level.trace: '🧭',
            Level.debug: '🐞',
            Level.info: '💬',
            Level.warning: '⚠',
            Level.error: '❌',
            Level.fatal: '💀',
          }),
      debug: '[LOG][DEBUG] ',
      info: '[LOG][INFO] ',
      warning: '[LOG][WARN] ',
      error: '[LOG][ERROR] ',
      fatal: '[LOG][FATAL] ',
      trace: '[LOG][TRACE] ',
    ));
