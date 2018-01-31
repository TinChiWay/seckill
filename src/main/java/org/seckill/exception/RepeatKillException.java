package org.seckill.exception;


import org.seckill.dto.SeckillExecution;

/**
 * @author TinChiWay
 * @date 2018/1/30
 */
public class RepeatKillException extends SeckillException {
    public RepeatKillException(String message){
        super(message);
    }

    public RepeatKillException(String message, Throwable cause) {
        super(message, cause);
    }
}
