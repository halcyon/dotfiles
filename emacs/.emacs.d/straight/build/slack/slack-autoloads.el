;;; slack-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "slack" "../../../../../../.emacs.d/straight/build/slack/slack.el"
;;;;;;  "82dc663345b7bef5edf0c07cd8885e03")
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack.el

(autoload 'slack-start "slack" "\


\(fn &optional TEAM)" t nil)

(autoload 'slack-register-team "slack" "\
PLIST must contain :name and :token.
Available options (property name, type, default value)
:subscribed-channels [ list symbol ] '()
  notified when new message arrived in these channels.
:default [boolean] nil
  if `slack-prefer-current-team' is t,
  some functions use this team without asking.
:full-and-display-names [boolean] nil
  if t, use full name to display user name.
:mark-as-read-immediately [boolean] these
  if t, mark messages as read when open channel.
  if nil, mark messages as read when cursor hovered.
:modeline-enabled [boolean] nil
  if t, display mention count and has unread in modeline.
:modeline-name [or nil string] nil
  use this value in modeline.
  if nil, use team name.
:visible-threads [boolean] nil
  if t, thread replies are also displayed in channel buffer.
:websocket-event-log-enabled [boolean] nil
  if t, websocket event is logged.
  use `slack-log-open-event-buffer' to open the buffer.
:animate-image [boolean] nil
  if t, animate gif images.

\(fn &rest PLIST)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "slack" "../../../../../../.emacs.d/straight/build/slack/slack.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack" '("slack-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-action"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-action.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-action.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-action" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-all-threads-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-all-threads-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-all-threads-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-all-threads-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-attachment"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-attachment.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-attachment.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-attachment" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-block"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-block.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-block.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-block" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-bot" "../../../../../../.emacs.d/straight/build/slack/slack-bot.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-bot.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-bot" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-bot-message"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-bot-message.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-bot-message.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-bot-message" '("slack-bot-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-buffer" '("slack-" "lui-prompt-string")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-channel"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-channel.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-channel.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-channel" '("slack-c")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-company"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-company.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-company.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-company" '("company-slack-backend")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-conversations"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-conversations.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-conversations.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-conversations" '("slack-conversations-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-counts"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-counts.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-counts.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-counts" '("slack-c")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-create-message"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-create-message.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-create-message.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-create-message" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-dialog"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-dialog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-dialog.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-dialog" '("slack-dialog")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-dialog-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-dialog-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-dialog-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-dialog-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-dialog-edit-element-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-dialog-edit-element-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-dialog-edit-element-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-dialog-edit-element-buffer" '("slack-dialog-edit-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-dnd-status"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-dnd-status.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-dnd-status.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-dnd-status" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-emoji"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-emoji.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-emoji.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-emoji" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-event"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-event.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-event.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-event" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-file" "../../../../../../.emacs.d/straight/build/slack/slack-file.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-file.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-file" '("slack-file")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-file-info-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-file-info-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-file-info-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-file-info-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-file-list-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-file-list-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-file-list-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-file-list-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-group"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-group.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-group.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-group" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-im" "../../../../../../.emacs.d/straight/build/slack/slack-im.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-im.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-im" '("slack-im")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-image"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-image.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-image.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-image" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-log" "../../../../../../.emacs.d/straight/build/slack/slack-log.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-log.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-log" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-attachment-preview-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-attachment-preview-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-attachment-preview-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-attachment-preview-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-compose-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-compose-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-compose-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-compose-buffer" '("slack-message-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-edit-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-edit-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-edit-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-edit-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-editor"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-editor.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-editor.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-editor" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-event"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-event.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-event.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-event" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-faces"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-faces.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-faces.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-faces" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-formatter"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-formatter.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-formatter.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-formatter" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-notification"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-notification.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-notification.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-notification" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-reaction"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-reaction.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-reaction.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-reaction" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-sender"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-sender.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-sender.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-sender" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-message-share-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-share-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-message-share-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-message-share-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-modeline"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-modeline.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-modeline.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-modeline" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-mrkdwn"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-mrkdwn.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-mrkdwn.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-mrkdwn" '("slack-mrkdwn-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-pinned-item"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-pinned-item.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-pinned-item.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-pinned-item" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-pinned-items-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-pinned-items-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-pinned-items-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-pinned-items-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-reaction"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-reaction.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-reaction.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-reaction" '("slack-reaction")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-reaction-event"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-reaction-event.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-reaction-event.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-reaction-event" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-reminder"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-reminder.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-reminder.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-reminder" '("slack-re")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-reply-event"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-reply-event.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-reply-event.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-reply-event" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-request"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-request.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-request.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-request" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-room" "../../../../../../.emacs.d/straight/build/slack/slack-room.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-room.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-room" '("slack-room")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-room-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-room-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-room-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-room-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-room-event"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-room-event.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-room-event.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-room-event" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-room-info-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-room-info-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-room-info-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-room-info-buffer" '("slack-room-info-buffer")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-room-message-compose-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-room-message-compose-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-room-message-compose-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-room-message-compose-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-search"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-search.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-search.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-search" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-search-result-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-search-result-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-search-result-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-search-result-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-selectable"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-selectable.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-selectable.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-selectable" '("slack-selectable")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-slash-commands"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-slash-commands.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-slash-commands.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-slash-commands" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-star" "../../../../../../.emacs.d/straight/build/slack/slack-star.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-star.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-star" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-star-event"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-star-event.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-star-event.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-star-event" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-stars-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-stars-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-stars-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-stars-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-team" "../../../../../../.emacs.d/straight/build/slack/slack-team.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-team.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-team" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-team-ws"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-team-ws.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-team-ws.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-team-ws" '("slack-team-ws")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-thread"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-thread.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-thread.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-thread" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-thread-event"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-thread-event.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-thread-event.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-thread-event" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-thread-message-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-thread-message-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-thread-message-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-thread-message-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-thread-message-compose-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-thread-message-compose-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-thread-message-compose-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-thread-message-compose-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-typing"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-typing.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-typing.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-typing" '("slack-typing")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-unescape"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-unescape.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-unescape.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-unescape" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-unread"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-unread.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-unread.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-unread" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-user" "../../../../../../.emacs.d/straight/build/slack/slack-user.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-user.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-user" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-user-message"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-user-message.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-user-message.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-user-message" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-user-profile-buffer"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-user-profile-buffer.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-user-profile-buffer.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-user-profile-buffer" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-usergroup"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-usergroup.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-usergroup.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-usergroup" '("slack-usergroup")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-util" "../../../../../../.emacs.d/straight/build/slack/slack-util.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-util.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-util" '("slack-")))

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "slack-websocket"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-websocket.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../../.emacs.d/straight/build/slack/slack-websocket.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "slack-websocket" '("slack-")))

;;;***

;;;### (autoloads nil nil ("../../../../../../.emacs.d/straight/build/slack/slack-action.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-all-threads-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-attachment.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-authorize.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-block.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-bot-message.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-bot.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-channel.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-company.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-conversations.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-counts.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-create-message.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-dialog-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-dialog-edit-element-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-dialog.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-dnd-status.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-emoji.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-event.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-file-info-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-file-list-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-file.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-group.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-im.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-image.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-log.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-attachment-preview-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-compose-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-edit-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-editor.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-event.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-faces.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-formatter.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-notification.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-reaction.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-sender.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message-share-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-message.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-modeline.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-mrkdwn.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-pinned-item.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-pinned-items-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-pkg.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-reaction-event.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-reaction.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-reminder.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-reply-event.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-request.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-room-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-room-event.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-room-info-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-room-message-compose-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-room.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-search-result-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-search.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-selectable.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-slash-commands.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-star-event.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-star.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-stars-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-team-ws.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-team.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-thread-event.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-thread-message-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-thread-message-compose-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-thread.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-typing.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-unescape.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-unread.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-user-message.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-user-profile-buffer.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-user.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-usergroup.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-util.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack-websocket.el"
;;;;;;  "../../../../../../.emacs.d/straight/build/slack/slack.el")
;;;;;;  (0 0 0 0))

;;;***

(provide 'slack-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; slack-autoloads.el ends here
