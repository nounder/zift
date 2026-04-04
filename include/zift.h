#ifndef ZIFT_H
#define ZIFT_H

#include <stdint.h>
#include <stdbool.h>

#define ZIFT_MAX_TITLE_LEN 256

typedef struct {
    uint64_t id;
    char title[ZIFT_MAX_TITLE_LEN];
    uint32_t title_len;
    bool completed;
    uint8_t priority; // 0=low, 1=medium, 2=high
} ZiftTodo;

uint64_t zift_add_todo(const char *title, uint32_t title_len, uint8_t priority);
bool zift_remove_todo(uint64_t id);
bool zift_toggle_todo(uint64_t id);
bool zift_set_priority(uint64_t id, uint8_t priority);
uint32_t zift_get_todo_count(void);
const ZiftTodo *zift_get_todo(uint32_t index);
uint32_t zift_clear_completed(void);
bool zift_update_title(uint64_t id, const char *title, uint32_t title_len);
uint32_t zift_count_completed(void);
uint32_t zift_count_pending(void);

#endif
