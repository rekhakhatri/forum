@extends('layouts.app')

@section('content')
<div class="panel panel-default">
        <div class="panel-heading">
            <img src="{{ $d->user->avatar }}" alt="" width="50px" height="50px" style="border-radius:50%;">&nbsp;&nbsp;&nbsp;
            <span>{{ $d->user->name }},<b>( {{ $d->user->points }} )</b></span>

            @if($d->hasBestAnswer())
              <span class="btn pull-right btn-success btn-xs">CLOSED</span>&nbsp;
            @else 
              <span class="btn pull-right btn-danger btn-xs">OPEN</span>&nbsp;
            @endif
             
            @if(Auth::id() == $d->user->id)
              @if(!$d->hasBestAnswer())
                 <a href="{{ route('discussion.edit', ['slug' => $d->slug ]) }}" class="btn btn-info btn-xs pull-right" style="margin-right:8px;">Edit</a>
              @endif   
            @endif

             @if($d->is_being_watched_by_auth_user())
                <a href="{{ route('discussion.unwatch', ['id' => $d->id ]) }}" class="btn btn-default btn-xs pull-right" style="margin-right:8px;">unwatch</a>
             @else
                <a href="{{ route('discussion.watch', ['id' => $d->id ]) }}" class="btn btn-default btn-xs pull-right" style="margin-right:8px;">watch</a>
             @endif
        </div>
        <div class="panel-body">
            <h3 class="text-center">
                {{ $d->title }}
            </h3>
            <hr>
            <p class="text-center">
                {{ $d->content }}
            </p>
            <hr>

            @if($best_answer)
                <div class="text-center" style="padding:40px;">
                    <h3 class="text-center">BEST ANSWER</h3>
                    <div class="panel panel-success">
                        <div class="panel-heading">
                            <img src="{{ $best_answer->user->avatar }}" alt="" width="50px" height="50px" style="border-radius:50%;">&nbsp;&nbsp;&nbsp;
                            <span>{{ $best_answer->user->name }},<b>( {{ $best_answer->user->points }} )</b></span>
                        </div>
                        <div class="panel-body">
                            {{ $best_answer->content }}
                        </div>
                    </div>
                </div>
            @endif

        </div>
        <div class="panel-footer">
            <p>
                {{ $d->replies->count() }} Replies
                 <a href="{{ route('channel', ['slug' => $d->channel->slug ])}}" class="pull-right btn btn-default btn-xs">{{ $d->channel->title }}</a>
            </p>
        </div>
    </div>
    @foreach($d->replies as $r)
    <div class="panel panel-default">
            <div class="panel-heading">
                <img src="{{ $r->user->avatar }}" alt="" width="50px" height="50px" style="border-radius:50%;">&nbsp;&nbsp;&nbsp;
                <span>{{ $r->user->name }},<b>( {{ $r->user->points }} )</b></span>
                  @if(!$best_answer)
                    @if(Auth::id() == $d->user->id)
                         <a href="{{ route('discussion.best.answer', ['id' => $r->id ])}}" class="btn btn-xs btn-info pull-right">Mark as best answer</a>
                    @endif     
                  @endif

                  @if(Auth::id() == $r->user->id)
                     @if(!$r->best_answer)
                         <a href="{{ route('reply.edit', ['id' => $r->id ]) }}" class="btn btn-info btn-xs pull-right" style="margin-right:8px;">Edit</a>
                      @endif
                  @endif
  
            </div>
            <div class="panel-body">
                <p class="text-center">
                    {{ $r->content }}
                </p>
            </div>
            <div class="panel-footer">
                @if($r->is_liked_by_auth_user())
                     <a href="{{ route('reply.unlike', ['id' => $r->id ]) }}" class="btn btn-danger btn-xs">Unlike <span class="badge">{{  $r->likes->count() }}</span></a>
                @else
                     <a href="{{ route('reply.like', ['id' => $r->id ]) }}" class="btn btn-success btn-xs">Like <span class="badge">{{  $r->likes->count() }}</span></a>
                @endif
            </div>
        </div>
    @endforeach

    <div class="panel panel-default">
        <div class="panel-body">
          @if(Auth::check())
            <form action="{{ route('discussion.reply',[ 'id' => $d->id ]) }}" method="post">
                {{ csrf_field() }}
                <div class="form-group">
                    <label for="reply">Leave a reply...</label>
                    <textarea name="reply" class="form-control" id="reply" cols="30" rows="10"></textarea>
                </div>
                <div class="form-group">
                    <button class="btn pull-right">Leave a reply</button>
                </div>
            </form>
          @else
               <div class="text-center">
                   <h2>Sign In to leave a reply</h2>
               </div>
          @endif
        </div>
    </div>
@endsection

